#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""After flash: open UART, wait for msh, run eFuse (or other) commands.

Requires: pip install pyserial
"""

from __future__ import annotations

import argparse
import os
import re
import sys
import time


def _has_prompt(data: bytes) -> bool:
    if b"msh />" in data:
        return True
    if b"msh " in data and b">" in data:
        # loose match for various msh prompts
        return True
    return False


def _safe_print(text: str) -> None:
    """Print text without crashing on non-UTF8 Windows console encodings."""
    try:
        print(text, end="")
    except UnicodeEncodeError:
        # Fallback for GBK/other legacy consoles.
        data = text.encode(sys.stdout.encoding or "utf-8", errors="replace")
        sys.stdout.buffer.write(data)
        sys.stdout.flush()


def wait_for_prompt(ser, idle_timeout: float, total_timeout: float) -> bytes:
    """Read until msh prompt appears or total_timeout."""
    deadline = time.time() + total_timeout
    buf = b""
    last_data = time.time()
    while time.time() < deadline:
        chunk = ser.read(4096)
        if chunk:
            buf += chunk
            last_data = time.time()
            if _has_prompt(buf):
                return buf
        else:
            if buf and (time.time() - last_data) > idle_timeout:
                if _has_prompt(buf):
                    return buf
        time.sleep(0.02)
    return buf


def drain_boot(ser, boot_wait: float) -> bytes:
    ser.reset_input_buffer()
    time.sleep(boot_wait)
    return ser.read(65536)


def main() -> int:
    try:
        import serial
    except ImportError:
        print("Install pyserial:  python -m pip install pyserial", file=sys.stderr)
        return 2

    ap = argparse.ArgumentParser(description="RT-Thread msh serial automation")
    ap.add_argument(
        "--port",
        default=os.environ.get("COM_PORT", "COM8"),
        help="Serial port (default: COM8 or env COM_PORT)",
    )
    ap.add_argument("--baud", type=int, default=1_000_000, help="Baud rate (default 1M)")
    ap.add_argument(
        "--cmd",
        action="append",
        default=None,
        help='msh command (repeatable). Default: "efuse info" then "version"',
    )
    ap.add_argument("--timeout", type=float, default=3.0, help="Per-read timeout seconds")
    ap.add_argument(
        "--boot-wait",
        type=float,
        default=4.0,
        help="Seconds to wait after open before first command (flash reboot)",
    )
    ap.add_argument(
        "--prompt-timeout",
        type=float,
        default=20.0,
        help="Max seconds to wait for msh prompt after wake",
    )
    ap.add_argument(
        "--expect-nonzero-sighash",
        action="store_true",
        help="Fail if SIG_HASH line is missing or all zeros",
    )
    ap.add_argument(
        "--open-retries",
        type=int,
        default=5,
        help="Retries if serial port is busy (e.g. sftool just released)",
    )
    ap.add_argument(
        "--open-retry-delay",
        type=float,
        default=1.5,
        help="Seconds between open retries",
    )
    args = ap.parse_args()

    cmds = args.cmd if args.cmd else ["efuse info", "version"]

    ser = None
    last_err = None
    for attempt in range(1, args.open_retries + 1):
        try:
            ser = serial.Serial(
                port=args.port,
                baudrate=args.baud,
                timeout=args.timeout,
                write_timeout=args.timeout,
            )
            break
        except serial.SerialException as e:
            last_err = e
            if attempt < args.open_retries:
                print(
                    f"Open {args.port} attempt {attempt}/{args.open_retries}: {e}",
                    file=sys.stderr,
                )
                time.sleep(args.open_retry_delay)
            else:
                print(f"Open {args.port} failed: {e}", file=sys.stderr)
                return 3

    assert ser is not None

    all_out = ""
    try:
        drain_boot(ser, args.boot_wait)

        ser.write(b"\r\n")
        time.sleep(0.1)
        boot_tail = wait_for_prompt(ser, idle_timeout=0.5, total_timeout=args.prompt_timeout)
        text0 = boot_tail.decode("utf-8", errors="replace")
        all_out += text0
        _safe_print(text0)

        if not _has_prompt(boot_tail):
            # one more CRLF
            ser.write(b"\r\n")
            time.sleep(0.2)
            more = wait_for_prompt(ser, idle_timeout=0.5, total_timeout=8.0)
            tmore = more.decode("utf-8", errors="replace")
            all_out += tmore
            _safe_print(tmore)

        for cmd in cmds:
            line = cmd.strip() + "\r\n"
            ser.write(line.encode("utf-8", errors="replace"))
            ser.flush()
            chunk = wait_for_prompt(ser, idle_timeout=0.3, total_timeout=12.0)
            t = chunk.decode("utf-8", errors="replace")
            all_out += t
            _safe_print(t)

    finally:
        ser.close()

    if args.expect_nonzero_sighash:
        m = re.search(
            r"SIG_HASH\s+\([^)]+\):\s*([0-9A-Fa-f\s]+)",
            all_out,
            re.MULTILINE,
        )
        if not m:
            print("Could not parse SIG_HASH from output.", file=sys.stderr)
            return 4
        hexpart = re.sub(r"\s+", "", m.group(1))
        if not hexpart or set(hexpart) <= {"0"}:
            print("SIG_HASH is all zero.", file=sys.stderr)
            return 5

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
