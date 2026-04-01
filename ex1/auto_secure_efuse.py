#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Automate secure eFuse programming with serial retries and verification.

Flow per round:
1) (optional) flash firmware
2) wait for board reboot/init
3) open serial and execute eFuse commands
4) parse output and verify SIG_HASH/SECURE flag
5) retry round if verification fails
"""

from __future__ import annotations

import argparse
import os
import re
import subprocess
import sys
import time
from pathlib import Path


ROOT = Path(__file__).resolve().parent
VERIFY_SCRIPT = ROOT / "verify_efuse_serial.py"
KEY_DIR = ROOT / "secboot" / "keys"
DEFAULT_FLASH_BAT = ROOT / "build_and_flash.bat"
DEFAULT_SEC_TOOL_DIR = ROOT.parent / "SiFli-SDK" / "tools" / "secureboot"


def _read_hex(path: Path) -> str:
    if not path.is_file():
        raise FileNotFoundError(f"Missing key file: {path}")
    return path.read_bytes().hex()


def _norm_hex(s: str) -> str:
    return re.sub(r"\s+", "", s).lower()


def _parse_field(text: str, name: str) -> str | None:
    pattern = rf"{name}\s+\([^)]+\):\s*([0-9A-Fa-f\s]+)"
    m = re.search(pattern, text, re.MULTILINE)
    if not m:
        return None
    return _norm_hex(m.group(1))


def _parse_secure_enabled(text: str) -> int | None:
    m = re.search(r"secure_enabled\s*=\s*0x([0-9A-Fa-f]{2})", text)
    if not m:
        return None
    return int(m.group(1), 16)


def _run_serial_cmds(py_exe: str, port: str, boot_wait: float, cmds: list[str]) -> tuple[int, str]:
    argv = [
        py_exe,
        str(VERIFY_SCRIPT),
        "--port",
        port,
        "--boot-wait",
        str(boot_wait),
        "--open-retries",
        "12",
        "--open-retry-delay",
        "1.5",
        "--prompt-timeout",
        "25",
    ]
    for c in cmds:
        argv.extend(["--cmd", c])
    proc = subprocess.run(argv, cwd=str(ROOT), capture_output=True, text=True, errors="replace")
    out = (proc.stdout or "") + (proc.stderr or "")
    return proc.returncode, out


def _run_flash(flash_bat: Path, com_port: str) -> int:
    env = os.environ.copy()
    env["COM_PORT"] = com_port
    proc = subprocess.run(
        ["cmd", "/c", "call", str(flash_bat)],
        cwd=str(ROOT),
        env=env,
    )
    return proc.returncode


def _run_sdk_action(
    py_exe: str,
    sec_tool_dir: Path,
    action: str,
    key_prefix: str,
    com_port: str,
    timeout_s: float,
) -> tuple[int, str]:
    argv = [
        py_exe,
        "download.py",
        action,
        "--port",
        com_port,
        "--verbose=2",
    ]
    if action == "root":
        argv.extend(["--key", f"{key_prefix}s01"])
    elif action == "sighash":
        argv.extend(["--key", f"{key_prefix}sig"])
    elif action == "enable_secure":
        argv.extend(["--secure=165"])

    try:
        proc = subprocess.run(
            argv,
            cwd=str(sec_tool_dir),
            timeout=timeout_s,
            capture_output=True,
            text=True,
            errors="replace",
        )
    except subprocess.TimeoutExpired:
        return 124, f"[TIMEOUT] action={action}"
    return proc.returncode, (proc.stdout or "") + (proc.stderr or "")


def _sdk_output_failed(out: str) -> bool:
    low = out.lower()
    bad_tokens = [
        "command not found",
        "download failed",
        "set failed",
        "traceback",
        "serialexception",
        "permissionerror",
    ]
    return any(tok in low for tok in bad_tokens)


def _run_sdk_program_efuse(
    py_exe: str,
    sec_tool_dir: Path,
    key_dir: Path,
    com_port: str,
    timeout_s: float,
    program_secure_flag: bool,
) -> tuple[int, str]:
    if not (sec_tool_dir / "download.py").is_file():
        raise FileNotFoundError(f"download.py not found: {sec_tool_dir / 'download.py'}")

    key_prefix = str(key_dir).replace("\\", "/") + "/"
    full_log = []

    # Write keys first, enable secure last (irreversible).
    actions = ["root", "sighash"]
    if program_secure_flag:
        actions.append("enable_secure")

    for action in actions:
        rc, out = _run_sdk_action(py_exe, sec_tool_dir, action, key_prefix, com_port, timeout_s)
        full_log.append(f"\n=== SDK action: {action} (rc={rc}) ===\n{out}")
        if rc != 0:
            return rc, "".join(full_log)
        if _sdk_output_failed(out):
            return 90, "".join(full_log)

    return 0, "".join(full_log)


def main() -> int:
    ap = argparse.ArgumentParser(description="Secure eFuse automation (write + verify + retry)")
    ap.add_argument("--port", default=os.environ.get("COM_PORT", "COM6"), help="Serial port")
    ap.add_argument("--rounds", type=int, default=5, help="Max retry rounds")
    ap.add_argument("--boot-wait", type=float, default=6.0, help="Wait after opening serial before sending commands")
    ap.add_argument("--retry-delay", type=float, default=3.0, help="Seconds between retry rounds")
    ap.add_argument(
        "--flash-first",
        action="store_true",
        help="Run build_and_flash.bat before each round",
    )
    ap.add_argument(
        "--flash-bat",
        default=str(DEFAULT_FLASH_BAT),
        help="Flash batch path used when --flash-first is set",
    )
    ap.add_argument(
        "--program-secure-flag",
        action="store_true",
        help="Also write SECURE_FLAG (bit 192). Irreversible.",
    )
    ap.add_argument(
        "--sdk-program",
        action="store_true",
        help="Use SDK secureboot/program_efuse.bat instead of msh efuse write commands",
    )
    ap.add_argument(
        "--sdk-sec-tool-dir",
        default=str(DEFAULT_SEC_TOOL_DIR),
        help="SiFli-SDK tools/secureboot directory for --sdk-program",
    )
    ap.add_argument(
        "--sdk-timeout",
        type=float,
        default=120.0,
        help="Timeout seconds for SDK program_efuse.bat",
    )
    ap.add_argument(
        "--check-only",
        action="store_true",
        help="Only run efuse info check, do not write anything.",
    )
    args = ap.parse_args()

    py_exe = Path(
        r"C:\Users\EDY\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts\python.exe"
    )
    if not py_exe.is_file():
        py_exe = Path(sys.executable)

    try:
        root_hex = _read_hex(KEY_DIR / "s01.bin")
        sig_hash_8 = _read_hex(KEY_DIR / "sig_hash.bin")[:16]
    except FileNotFoundError as e:
        print(e, file=sys.stderr)
        return 2

    print("=== Secure eFuse automation ===")
    print(f"PORT        : {args.port}")
    print(f"ROUNDS      : {args.rounds}")
    print(f"BOOT_WAIT   : {args.boot_wait}s")
    print(f"CHECK_ONLY  : {args.check_only}")
    print(f"WRITE_SEC   : {args.program_secure_flag}")
    print(f"SIG_HASH(8) : {sig_hash_8}")

    flash_bat = Path(args.flash_bat)
    if args.flash_first and not flash_bat.is_file():
        print(f"Flash script not found: {flash_bat}", file=sys.stderr)
        return 2

    for i in range(1, args.rounds + 1):
        print(f"\n---- Round {i}/{args.rounds} ----")

        if args.flash_first:
            rc = _run_flash(flash_bat, args.port)
            if rc != 0:
                print(f"[WARN] flash failed rc={rc}")
                time.sleep(args.retry_delay)
                continue
            # give chip extra time after flash-induced reboot
            time.sleep(2.0)

        if args.sdk_program and not args.check_only:
            try:
                rc, sdk_log = _run_sdk_program_efuse(
                    str(py_exe),
                    Path(args.sdk_sec_tool_dir),
                    KEY_DIR,
                    args.port,
                    args.sdk_timeout,
                    args.program_secure_flag,
                )
                print(sdk_log, end="")
            except FileNotFoundError as e:
                print(str(e), file=sys.stderr)
                return 2
            if rc != 0:
                if rc == 124:
                    print("[WARN] SDK program_efuse timeout. Is board in download mode?")
                print(f"[WARN] SDK program_efuse failed rc={rc}")
                time.sleep(args.retry_delay)
                continue
            # SDK flow may reboot board; wait a moment before opening serial.
            time.sleep(2.0)
            cmds = ["efuse info"]
        else:
            cmds = ["efuse info"]
            if not args.check_only:
                cmds += [
                    f"efuse write 768 {root_hex}",
                    "efuse info",
                    f"efuse write 128 {sig_hash_8}",
                    "efuse info",
                ]
                if args.program_secure_flag:
                    cmds += [
                        "efuse write 192 a5000000",
                        "efuse info",
                    ]

        rc, out = _run_serial_cmds(str(py_exe), args.port, args.boot_wait, cmds)
        print(out, end="")

        if rc != 0:
            print(f"[WARN] serial command failed rc={rc}")
            time.sleep(args.retry_delay)
            continue

        sig_hex = _parse_field(out, "SIG_HASH")
        sec_val = _parse_secure_enabled(out)

        sig_ok = (sig_hex == sig_hash_8)
        sec_ok = True
        if args.program_secure_flag or args.sdk_program:
            sec_ok = (sec_val == 0xA5)

        print(f"[CHECK] SIG_HASH expected={sig_hash_8} actual={sig_hex}")
        if args.program_secure_flag or args.sdk_program:
            print(f"[CHECK] SECURE expected=0xA5 actual={sec_val!r}")

        if sig_ok and sec_ok:
            print("[OK] verification passed")
            return 0

        print("[WARN] verification not passed; retrying...")
        time.sleep(args.retry_delay)

    print("[FAIL] max rounds reached without successful verification", file=sys.stderr)
    return 1


if __name__ == "__main__":
    raise SystemExit(main())

