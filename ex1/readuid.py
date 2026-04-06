#!/usr/bin/env python3
"""Read factory UID from SF32LB52x chip via serial (msh 'efuse info') and save as uid.bin."""

import argparse
import os
import re
import sys
import time

def main():
    try:
        import serial
    except ImportError:
        print("ERROR: pyserial not installed. Run: pip install pyserial", file=sys.stderr)
        return 1

    ap = argparse.ArgumentParser(description="Read chip UID via msh serial")
    ap.add_argument("--port", default=os.environ.get("COM_PORT", "COM6"))
    ap.add_argument("--baud", type=int, default=1_000_000)
    ap.add_argument("--out", required=True, help="Output path for uid.bin")
    ap.add_argument("--boot-wait", type=float, default=3.0)
    args = ap.parse_args()

    ser = serial.Serial(args.port, args.baud, timeout=0.3)
    time.sleep(args.boot_wait)
    ser.reset_input_buffer()

    ser.write(b"\r\n")
    time.sleep(0.3)
    ser.write(b"efuse info\r\n")
    time.sleep(1.5)

    buf = ser.read(65536)
    ser.close()

    text = buf.decode("utf-8", errors="replace")
    m = re.search(r"UID\s+\([^)]+\):\s*([0-9A-Fa-f]+)", text)
    if not m:
        print("[FAIL] Could not find UID in efuse info output.", file=sys.stderr)
        print("Raw output:\n" + text, file=sys.stderr)
        return 1

    uid_hex = m.group(1).strip()
    if len(uid_hex) != 32:
        print(f"[FAIL] UID length unexpected: {len(uid_hex)} hex chars (need 32).", file=sys.stderr)
        return 1

    uid_bytes = bytes.fromhex(uid_hex)

    old_path = args.out
    if os.path.isfile(old_path):
        old = open(old_path, "rb").read()
        if old == uid_bytes:
            print(f"  UID unchanged: {uid_hex}")
            return 0
        print(f"  UID changed! old={old.hex().upper()}")

    os.makedirs(os.path.dirname(os.path.abspath(old_path)), exist_ok=True)
    open(old_path, "wb").write(uid_bytes)
    print(f"  UID: {uid_hex}")
    print(f"  Saved to: {old_path}")
    return 0

if __name__ == "__main__":
    sys.exit(main())
