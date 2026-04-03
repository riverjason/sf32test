#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Pre-flight checks before programming eFuse / SECURE_FLAG (irreversible).

Validates:
  - Key material under secboot/keys is present and internally consistent
    (SHA256(sig_pub.der)[:8] == sig_hash.bin[:8]).
  - Optional: compare chip `efuse info` text to keys (UID, SIG_HASH; ROOT if readable).
  - Refuse if SECURE_FLAG already enabled (secure_enabled != 0x00).
  - Optional: require secboot/out/image_sec.bin + ftab_sec.bin (flash artifacts).

Exit codes: 0 = OK, 1 = failed check, 2 = bad usage, 3 = serial/subprocess error.
"""

from __future__ import annotations

import argparse
import os
import re
import subprocess
import sys
from pathlib import Path

try:
    from Cryptodome.Hash import SHA256
except ImportError:
    print("ERROR: Install pycryptodome:  pip install pycryptodome", file=sys.stderr)
    sys.exit(2)


def _read_bin(p: Path) -> bytes:
    if not p.is_file():
        raise FileNotFoundError(str(p))
    return p.read_bytes()


def check_key_files(key_dir: Path) -> tuple[bytes, bytes, bytes]:
    uid = _read_bin(key_dir / "uid.bin")
    root = _read_bin(key_dir / "s01.bin")
    sig_hash = _read_bin(key_dir / "sig_hash.bin")
    der = _read_bin(key_dir / "sig_pub.der")
    if len(uid) != 16:
        raise ValueError("uid.bin must be 16 bytes")
    if len(root) != 32:
        raise ValueError("s01.bin (ROOT_KEY) must be 32 bytes")
    if len(sig_hash) < 8:
        raise ValueError("sig_hash.bin must be at least 8 bytes")
    h = SHA256.new(der).digest()
    if h[:8] != sig_hash[:8]:
        raise ValueError(
            "sig_hash.bin (first 8 bytes) does not match SHA256(sig_pub.der)[:8]. "
            "Keys are inconsistent - do NOT burn eFuse."
        )
    pri = key_dir / "sig_pri.pem"
    if not pri.is_file():
        raise FileNotFoundError("sig_pri.pem missing (required for signed images)")
    return uid, root, sig_hash


_RE_UID = re.compile(r"UID\s+\([^)]+\):\s*([0-9A-Fa-f]+)", re.MULTILINE)
_RE_SIG = re.compile(r"SIG_HASH\s+\([^)]+\):\s*([0-9A-Fa-f]+)", re.MULTILINE)
_RE_SEC = re.compile(r"secure_enabled\s*=\s*0x([0-9A-Fa-f]+)", re.MULTILINE)
_RE_ROOT = re.compile(r"ROOT_KEY\s+\([^)]+\):\s*([0-9A-Fa-f]+)", re.MULTILINE)


def parse_efuse_info_text(text: str) -> dict:
    out: dict = {}
    m = _RE_UID.search(text)
    if m:
        out["uid_hex"] = re.sub(r"\s+", "", m.group(1))
    m = _RE_SIG.search(text)
    if m:
        out["sig_hash_hex"] = re.sub(r"\s+", "", m.group(1))
    m = _RE_SEC.search(text)
    if m:
        out["secure_byte"] = int(m.group(1), 16) & 0xFF
    m = _RE_ROOT.search(text)
    if m:
        out["root_hex"] = re.sub(r"\s+", "", m.group(1))
    return out


def _hex_eq(hex_str: str, data: bytes) -> bool:
    h = hex_str.lower()
    return h == data.hex().lower()


def analyze_chip(
    parsed: dict,
    uid: bytes,
    root: bytes,
    sig_hash8: bytes,
) -> tuple[list[str], list[str]]:
    """Return (errors, warnings)."""
    errors: list[str] = []
    warnings: list[str] = []

    if "uid_hex" not in parsed:
        errors.append("Could not parse UID from efuse info.")
    elif not _hex_eq(parsed["uid_hex"], uid):
        errors.append(
            "UID on chip does NOT match keys/uid.bin - wrong board or wrong key folder."
        )

    if "sig_hash_hex" not in parsed:
        errors.append("Could not parse SIG_HASH from efuse info.")
    else:
        try:
            chip_sh = bytes.fromhex(parsed["sig_hash_hex"])
        except ValueError:
            errors.append("SIG_HASH on chip is not valid hex.")
        else:
            if len(chip_sh) < 8:
                errors.append("SIG_HASH on chip is shorter than 8 bytes.")
            elif chip_sh[:8] != sig_hash8:
                errors.append(
                    "SIG_HASH on chip does NOT match keys/sig_hash.bin - signing key mismatch."
                )

    if "secure_byte" not in parsed:
        errors.append(
            "Could not parse secure_enabled from efuse info - refusing unsafe burn."
        )
    elif parsed["secure_byte"] != 0:
        errors.append(
            f"SECURE_FLAG already non-zero (secure_enabled=0x{parsed['secure_byte']:02X}). "
            "Aborting - do not reprogram without vendor guidance."
        )

    if "root_hex" in parsed:
        rh = parsed["root_hex"]
        if len(rh) == 64 and re.match(r"^[0-9A-Fa-f]{64}$", rh):
            if re.match(r"^0{64}$", rh):
                warnings.append(
                    "ROOT_KEY reads as all zeros (may be unreadable before SECURE_FLAG; "
                    "if already programmed, hardware may hide content — verify with vendor docs)."
                )
            elif bytes.fromhex(rh) != root:
                errors.append(
                    "ROOT_KEY on chip does NOT match keys/s01.bin - keys/board mismatch."
                )
    else:
        warnings.append("Could not parse ROOT_KEY line (optional field).")

    return errors, warnings


def fetch_efuse_info_via_serial(port: str) -> str:
    ex1 = Path(__file__).resolve().parent.parent
    script = ex1 / "verify_efuse_serial.py"
    if not script.is_file():
        raise FileNotFoundError(str(script))
    r = subprocess.run(
        [
            sys.executable,
            str(script),
            "--port",
            port,
            "--cmd",
            "efuse info",
            "--boot-wait",
            "5",
            "--open-retries",
            "8",
        ],
        cwd=str(ex1),
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        timeout=120,
    )
    out = (r.stdout or "") + (r.stderr or "")
    if r.returncode != 0:
        raise RuntimeError(
            f"verify_efuse_serial.py failed (exit {r.returncode}):\n{out[:4000]}"
        )
    return out


def main() -> int:
    ap = argparse.ArgumentParser(
        description="Pre-flight checks before SECURE_FLAG / eFuse secure programming"
    )
    ap.add_argument(
        "--key-dir",
        type=Path,
        default=Path(__file__).resolve().parent / "keys",
        help="Directory with uid.bin, s01.bin, sig_hash.bin, sig_pub.der, sig_pri.pem",
    )
    ap.add_argument(
        "--efuse-info-file",
        type=Path,
        default=None,
        help="Text file containing pasted output of `efuse info` from the board",
    )
    ap.add_argument(
        "--fetch",
        action="store_true",
        help="Query `efuse info` from the board via serial (uses verify_efuse_serial.py)",
    )
    ap.add_argument(
        "--port",
        default=os.environ.get("COM_PORT", "COM6"),
        help="Serial port for --fetch",
    )
    ap.add_argument(
        "--require-flash-artifacts",
        action="store_true",
        help="Require secboot/out/image_sec.bin and ftab_sec.bin to exist (non-empty)",
    )
    args = ap.parse_args()

    key_dir = args.key_dir.resolve()
    print("=== eFuse secure programming - preflight ===")
    print(f"KEY_DIR: {key_dir}")

    try:
        uid, root, sig_hash = check_key_files(key_dir)
    except (OSError, ValueError) as e:
        print(f"[FAIL] Key material: {e}", file=sys.stderr)
        return 1

    print("[OK] Key files present and sig_hash matches sig_pub.der (SHA256).")

    out_dir = key_dir.parent / "out"
    if args.require_flash_artifacts:
        for name, min_len in (("image_sec.bin", 256), ("ftab_sec.bin", 64)):
            p = out_dir / name
            if not p.is_file() or p.stat().st_size < min_len:
                print(
                    f"[FAIL] Missing or too small: {p} (run gen_sec_img.bat after build).",
                    file=sys.stderr,
                )
                return 1
        print(f"[OK] Flash artifacts found under {out_dir}")

    text = ""
    if args.fetch:
        print(f"Fetching efuse info from {args.port} ...")
        try:
            text = fetch_efuse_info_via_serial(args.port)
        except Exception as e:
            print(f"[FAIL] Serial fetch: {e}", file=sys.stderr)
            return 3
    elif args.efuse_info_file is not None:
        p = args.efuse_info_file.resolve()
        if not p.is_file():
            print(f"[FAIL] File not found: {p}", file=sys.stderr)
            return 2
        text = p.read_text(encoding="utf-8", errors="replace")

    if text:
        parsed = parse_efuse_info_text(text)
        errs, warns = analyze_chip(parsed, uid, root, sig_hash[:8])
        for w in warns:
            print(f"[WARN] {w}")
        for e in errs:
            print(f"[FAIL] {e}", file=sys.stderr)
        if errs:
            return 1
        print(
            "[OK] Chip efuse info is consistent with keys (and SECURE not yet enabled)."
        )
    else:
        print(
            "[WARN] No chip data (--fetch or --efuse-info-file). "
            "Only key-folder consistency was checked - confirm board matches keys manually."
        )

    print()
    print("Preflight passed. Irreversible steps - double-check before SECURE_FLAG:")
    print("  - Signed firmware flashed and boots (image_sec.bin / ftab_sec.bin).")
    print("  - Set CONFIRM_SECURE_EFUSE=YES then run program_efuse_once.bat")
    print("  - Manual MSH last step: efuse write 192 a5000000  (only after ROOT/SIG/UID OK).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
