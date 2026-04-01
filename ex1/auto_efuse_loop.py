#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Build -> flash -> serial test in a loop until PASS or max rounds.

  --gate otp   (default)  `efuse test` must print EFUSE_TEST_RESULT PASS (real OTP write+read).
  --gate info             only `efuse info` + UID non-zero (use when OTP HW not yet working).

Usage:
  python auto_efuse_loop.py
  python auto_efuse_loop.py --port COM9 --rounds 5
  python auto_efuse_loop.py --serial-only --gate info
  python auto_efuse_loop.py --serial-only          # still runs default --gate otp
"""

from __future__ import annotations

import argparse
import os
import re
import subprocess
import sys
import time

ROOT = os.path.dirname(os.path.abspath(__file__))
BUILD_FLASH_BAT = os.path.join(ROOT, "build_and_flash.bat")
VERIFY_PY = os.path.join(ROOT, "verify_efuse_serial.py")

PYTHON_VENV = os.path.join(
    os.path.expanduser("~"),
    ".sifli",
    "python_env",
    "sifli-sdk2.4_py3.12_env",
    "Scripts",
    "python.exe",
)


def find_python() -> str:
    if os.path.isfile(PYTHON_VENV):
        return PYTHON_VENV
    return sys.executable


def ensure_pyserial(py_exe: str) -> None:
    r = subprocess.run(
        [py_exe, "-c", "import serial"],
        capture_output=True,
    )
    if r.returncode != 0:
        subprocess.run([py_exe, "-m", "pip", "install", "-q", "pyserial"], check=False)


def run_build_flash() -> None:
    if not os.path.isfile(BUILD_FLASH_BAT):
        print(f"Missing {BUILD_FLASH_BAT}", file=sys.stderr)
        sys.exit(2)
    # inherit COM_PORT from environment
    r = subprocess.run(
        ["cmd", "/c", "call", BUILD_FLASH_BAT],
        cwd=ROOT,
    )
    if r.returncode != 0:
        raise RuntimeError(f"build_and_flash failed with {r.returncode}")


def _uid_nonzero(out: str) -> bool:
    m = re.search(r"UID\s+\([^)]+\):\s*([0-9A-Fa-f]+)", out)
    if not m:
        return False
    hx = re.sub(r"\s+", "", m.group(1))
    return len(hx) >= 4 and any(c != "0" for c in hx)


def serial_efuse_test(port: str, boot_wait: float, py_exe: str, gate: str) -> bool:
    """Run serial checks. gate: 'otp' -> efuse test PASS; 'info' -> efuse info + UID."""
    ensure_pyserial(py_exe)
    cmds = ["efuse test"] if gate == "otp" else ["efuse info"]
    argv = [
        py_exe,
        VERIFY_PY,
        "--port",
        port,
        "--boot-wait",
        str(boot_wait),
        "--open-retries",
        "12",
        "--open-retry-delay",
        "2",
    ]
    for c in cmds:
        argv.extend(["--cmd", c])
    r = subprocess.run(argv, cwd=ROOT, capture_output=True, text=True, errors="replace")
    out = (r.stdout or "") + (r.stderr or "")
    print(out, end="")
    if r.returncode != 0:
        return False
    if gate == "info":
        return _uid_nonzero(out)
    return bool(re.search(r"EFUSE_TEST_RESULT\s+PASS", out))


def main() -> int:
    ap = argparse.ArgumentParser(description="Loop build/flash/eFuse test until PASS")
    ap.add_argument("--port", default=os.environ.get("COM_PORT", "COM8"))
    ap.add_argument("--rounds", type=int, default=8, help="Max build+flash+test cycles")
    ap.add_argument("--boot-wait", type=float, default=5.0)
    ap.add_argument(
        "--serial-only",
        action="store_true",
        help="Do not build/flash; only run serial efuse test (repeat --rounds times)",
    )
    ap.add_argument(
        "--gate",
        choices=("otp", "info"),
        default="otp",
        help="otp=efuse test OTP pass; info=only UID readable (no OTP write check)",
    )
    ap.add_argument(
        "--pause-between",
        type=float,
        default=4.0,
        help="Seconds after flash before opening serial",
    )
    args = ap.parse_args()

    py_exe = find_python()
    os.environ["COM_PORT"] = args.port

    for n in range(1, args.rounds + 1):
        print(f"\n======== Round {n}/{args.rounds} ========\n")
        try:
            if not args.serial_only:
                run_build_flash()
                # delay so sftool releases COM and chip boots
                time.sleep(args.pause_between)
        except RuntimeError as e:
            print(e, file=sys.stderr)
            continue

        ok = serial_efuse_test(args.port, args.boot_wait, py_exe, args.gate)
        if ok:
            print(f"\n[OK] Gate '{args.gate}' passed on round {n}.")
            return 0
        print(f"\n[WARN] Round {n} gate '{args.gate}' not satisfied; retrying...", file=sys.stderr)

    print("\n[FAIL] Max rounds reached without EFUSE_TEST_RESULT PASS.", file=sys.stderr)
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
