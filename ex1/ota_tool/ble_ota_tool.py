"""
Minimal BLE OTA tool for sf32test/ex1.

Requirements:
  pip install bleak

Usage examples:
  python ble_ota_tool.py --scan
  python ble_ota_tool.py --name SF32_DEV --file ..\\secboot\\out\\ota_pkg.bin
  python ble_ota_tool.py --address XX:XX:XX:XX:XX:XX --file ota_pkg.bin
  python ble_ota_tool.py --self-test
"""

from __future__ import annotations

import argparse
import asyncio
import pathlib
import struct
import sys
import zlib
from collections.abc import Callable
from dataclasses import dataclass

try:
    from bleak import BleakClient, BleakScanner  # pyright: ignore[reportMissingImports]
except ImportError:
    BleakClient = None
    BleakScanner = None


SERVICE_UUID = "7369666c-695f-6170-7000-000000000000"
CHAR_UUID = "7369666c-695f-6170-7001-000000000000"
ALT_SERVICE_UUID = "00000000-0000-0070-7061-5f696c666973"
ALT_CHAR_UUID = "00000000-0000-0170-7061-5f696c666973"

SOF = bytes([0x55, 0xAA])
OTA_PKG_MAGIC = b"SFOT"
FTAB_REGION_SIZE = 0x8000

CMD_HELLO = 0x01
CMD_ERASE = 0x02
CMD_DATA = 0x03
CMD_FINISH = 0x04
CMD_ABORT = 0x05
CMD_REBOOT = 0x06
CMD_TARGET = 0x07
CMD_RSP = 0x80


def ensure_bleak_available() -> None:
    if BleakClient is None or BleakScanner is None:
        raise RuntimeError("bleak not installed. Run: pip install bleak")


def crc32_ieee(data: bytes) -> int:
    return zlib.crc32(data) & 0xFFFFFFFF


def build_frame(cmd: int, payload: bytes = b"") -> bytes:
    body = bytes([cmd]) + struct.pack("<HH", len(payload), 0) + payload
    return SOF + body + struct.pack("<I", crc32_ieee(body))


def build_response(cmd: int, status: int = 0, extra: bytes = b"") -> bytes:
    return build_frame(CMD_RSP | cmd, bytes([status]) + extra)


def parse_frame(frame: bytes, max_payload: int = 1024) -> tuple[int, bytes]:
    if len(frame) < 11 or frame[:2] != SOF:
        raise ValueError("Bad frame header")

    cmd = frame[2]
    plen = frame[3] | (frame[4] << 8)
    need = 7 + plen + 4
    if plen > max_payload or len(frame) != need:
        raise ValueError("Bad frame length")

    body = frame[2 : 7 + plen]
    crc_rx = struct.unpack_from("<I", frame, 7 + plen)[0]
    if crc32_ieee(body) != crc_rx:
        raise ValueError("Bad frame CRC")

    return cmd, frame[7 : 7 + plen]


def parse_ota_pkg(path: str) -> tuple[bytes, bytes]:
    raw = pathlib.Path(path).read_bytes()
    if len(raw) < 16:
        raise ValueError("File too small to be an OTA package")

    magic, ver, ftab_sz, img_sz = struct.unpack_from("<4sIII", raw)
    if magic != OTA_PKG_MAGIC:
        raise ValueError(f"Bad magic: {magic!r}, expected {OTA_PKG_MAGIC!r}")
    if ver != 1:
        raise ValueError(f"Unsupported package version: {ver}")

    total = 16 + ftab_sz + img_sz
    if len(raw) < total:
        raise ValueError(f"Package truncated: have {len(raw)}, need {total}")

    ftab = raw[16 : 16 + ftab_sz]
    img = raw[16 + ftab_sz : 16 + ftab_sz + img_sz]
    return ftab, img


class FrameParser:
    def __init__(self, max_payload: int = 512) -> None:
        self._buf = bytearray()
        self._max_payload = max_payload

    def append(self, data: bytes) -> None:
        self._buf.extend(data)

    def pop_frame(self) -> tuple[int, int, bytes] | None:
        while True:
            idx = self._buf.find(SOF)
            if idx < 0:
                self._buf.clear()
                return None
            if idx > 0:
                del self._buf[:idx]
            if len(self._buf) < 7:
                return None

            cmd = self._buf[2]
            plen = self._buf[3] | (self._buf[4] << 8)
            need = 7 + plen + 4
            if plen > self._max_payload or need > 1024:
                del self._buf[:2]
                continue
            if len(self._buf) < need:
                return None

            body = bytes(self._buf[2 : 7 + plen])
            crc_rx = struct.unpack_from("<I", self._buf, 7 + plen)[0]
            if crc32_ieee(body) != crc_rx:
                del self._buf[:2]
                continue

            payload = bytes(self._buf[7 : 7 + plen])
            del self._buf[:need]
            status = payload[0] if payload else 0xFF
            extra = payload[1:] if len(payload) > 1 else b""
            return cmd, status, extra


@dataclass
class HelloInfo:
    slot_base: int
    max_image: int
    max_payload: int
    ftab_base: int


class BleOtaClient:
    def __init__(
        self,
        device_id: str,
        ftab: bytes,
        image: bytes,
        data_cap: int | None = None,
        client_factory: Callable[[str], object] | None = None,
        char_uuid: str = CHAR_UUID,
        log_fn: Callable[[str], None] | None = None,
        progress_fn: Callable[[int, str], None] | None = None,
    ) -> None:
        self.device_id = device_id
        self.ftab = ftab
        self.image = image
        self.data_cap = data_cap
        self.client_factory = client_factory or BleakClient
        self.char_uuid = char_uuid
        self.client = None
        self.parser = FrameParser()
        self.queue: asyncio.Queue[tuple[int, int, bytes]] = asyncio.Queue()
        self.hello: HelloInfo | None = None
        self.log_fn = log_fn
        self.progress_fn = progress_fn

    def log(self, msg: str) -> None:
        if self.log_fn:
            self.log_fn(msg)
        else:
            print(msg, flush=True)

    def progress(self, pct: int, text: str) -> None:
        if self.progress_fn:
            self.progress_fn(pct, text)

    def _notify_cb(self, _handle: int, data: bytearray) -> None:
        self.parser.append(bytes(data))
        while True:
            frame = self.parser.pop_frame()
            if frame is None:
                break
            self.queue.put_nowait(frame)

    async def _write(self, frame: bytes) -> None:
        assert self.client is not None
        try:
            await self.client.write_gatt_char(self.char_uuid, frame, response=True)
        except Exception:
            await self.client.write_gatt_char(self.char_uuid, frame, response=False)

    async def _send(self, cmd: int, payload: bytes = b"") -> None:
        await self._write(build_frame(cmd, payload))

    def _resolve_char_uuid(self) -> str:
        assert self.client is not None
        if not hasattr(self.client, "services"):
            return self.char_uuid

        candidates = {self.char_uuid.lower(), CHAR_UUID.lower(), ALT_CHAR_UUID.lower()}
        fallback_uuid = None

        for service in self.client.services:
            service_uuid = service.uuid.lower()
            if service_uuid not in {SERVICE_UUID.lower(), ALT_SERVICE_UUID.lower()}:
                continue
            for ch in service.characteristics:
                ch_uuid = ch.uuid.lower()
                props = set(ch.properties)
                if ch_uuid in candidates:
                    return ch.uuid
                if fallback_uuid is None and "notify" in props and ("write" in props or "write-without-response" in props):
                    fallback_uuid = ch.uuid

        if fallback_uuid:
            return fallback_uuid

        for service in self.client.services:
            for ch in service.characteristics:
                props = set(ch.properties)
                if "notify" in props and ("write" in props or "write-without-response" in props):
                    return ch.uuid

        raise RuntimeError("No writable/notifiable GATT characteristic found for OTA")

    async def _recv(self, expect_cmd: int, timeout: float = 5.0) -> tuple[int, bytes]:
        while True:
            cmd, status, extra = await asyncio.wait_for(self.queue.get(), timeout=timeout)
            if cmd != expect_cmd:
                continue
            return status, extra

    async def _cmd_hello(self) -> None:
        await self._send(CMD_HELLO)
        status, extra = await self._recv(CMD_RSP | CMD_HELLO, 5.0)
        if status != 0:
            raise RuntimeError(f"HELLO failed ({status})")
        if len(extra) < 16:
            raise RuntimeError(f"HELLO response too short: {len(extra)}")

        slot_base, max_image, max_payload, ftab_base = struct.unpack_from("<IIII", extra)
        self.hello = HelloInfo(slot_base, max_image, max_payload, ftab_base)
        self.log(
            f"HELLO OK: slot=0x{slot_base:08X} max_image={max_image} "
            f"max_payload={max_payload} ftab=0x{ftab_base:08X}"
        )

    async def _cmd_target(self, base: int, size: int) -> None:
        self.log(f"TARGET -> 0x{base:08X} ({size} bytes)")
        await self._send(CMD_TARGET, struct.pack("<II", base, size))
        status, _ = await self._recv(CMD_RSP | CMD_TARGET, 5.0)
        if status != 0:
            raise RuntimeError(f"TARGET failed ({status})")

    async def _cmd_erase(self, label: str, timeout: float) -> None:
        self.log(f"ERASE {label} ...")
        await self._send(CMD_ERASE)
        status, _ = await self._recv(CMD_RSP | CMD_ERASE, timeout)
        if status != 0:
            raise RuntimeError(f"ERASE {label} failed ({status})")

    async def _send_blob(self, label: str, blob: bytes, pct_base: int = 0, pct_span: int = 100) -> tuple[int, int]:
        assert self.hello is not None
        payload_limit = self.hello.max_payload
        if payload_limit <= 4:
            raise RuntimeError(f"Device max payload too small: {payload_limit}")
        data_limit = payload_limit - 4
        if self.data_cap:
            data_limit = min(data_limit, self.data_cap)
        data_limit = max(1, data_limit)

        total = len(blob)
        sent = 0
        self.log(f"Sending {label}: {total} bytes, chunk={data_limit}")
        while sent < total:
            end = min(sent + data_limit, total)
            payload = struct.pack("<I", sent) + blob[sent:end]
            await self._send(CMD_DATA, payload)
            status, _ = await self._recv(CMD_RSP | CMD_DATA, 20.0)
            if status != 0:
                raise RuntimeError(f"DATA {label} @{sent} failed ({status})")
            sent = end
            pct = sent * 100 // total if total else 100
            self.log(f"  {label}: {sent}/{total} ({pct}%)")
            self.progress(pct_base + (pct * pct_span // 100), f"{label}: {sent}/{total}")

        return total, crc32_ieee(blob)

    async def _cmd_finish(self, label: str, size: int, crc: int) -> None:
        self.log(f"FINISH {label}: size={size} crc=0x{crc:08X}")
        await self._send(CMD_FINISH, struct.pack("<II", size, crc))
        status, extra = await self._recv(CMD_RSP | CMD_FINISH, 30.0)
        if status == 3 and len(extra) >= 8:
            dev_crc, exp_crc = struct.unpack_from("<II", extra)
            raise RuntimeError(
                f"FINISH {label} CRC mismatch: dev=0x{dev_crc:08X} expected=0x{exp_crc:08X}"
            )
        if status != 0:
            raise RuntimeError(f"FINISH {label} failed ({status})")

    async def _cmd_reboot(self) -> None:
        self.log("REBOOT ...")
        await self._send(CMD_REBOOT)
        try:
            status, _ = await self._recv(CMD_RSP | CMD_REBOOT, 5.0)
            if status != 0:
                raise RuntimeError(f"REBOOT failed ({status})")
        except asyncio.TimeoutError:
            pass

    async def run(self) -> None:
        if self.client_factory is None:
            ensure_bleak_available()
            self.client_factory = BleakClient

        self.client = self.client_factory(self.device_id)
        await self.client.connect()
        self.log(f"Connected: {self.device_id}")
        if hasattr(self.client, "mtu_size"):
            self.log(f"MTU: {getattr(self.client, 'mtu_size')}")

        self.char_uuid = self._resolve_char_uuid()
        self.log(f"Using OTA characteristic: {self.char_uuid}")

        await self.client.start_notify(self.char_uuid, self._notify_cb)
        await asyncio.sleep(0.3)

        try:
            await self._cmd_hello()
            assert self.hello is not None
            if self.hello.ftab_base == 0:
                raise RuntimeError("Device did not report ftab target address")

            self.log("--- Phase 1: image -> inactive slot ---")
            self.progress(1, "Erasing image slot")
            await self._cmd_erase("image slot", 90.0)
            img_size, img_crc = await self._send_blob("image", self.image, 2, 90)
            await self._cmd_finish("image", img_size, img_crc)

            self.log("--- Phase 2: ftab -> inactive ftab ---")
            self.progress(96, "Erasing ftab region")
            await self._cmd_target(self.hello.ftab_base, FTAB_REGION_SIZE)
            await self._cmd_erase("ftab region", 15.0)
            ftab_size, ftab_crc = await self._send_blob("ftab", self.ftab, 97, 2)
            await self._cmd_finish("ftab", ftab_size, ftab_crc)

            self.log("--- Phase 3: reboot ---")
            self.progress(99, "Rebooting")
            await self._cmd_reboot()
            self.progress(100, "Done")
            self.log("Upgrade command sequence complete.")
        finally:
            try:
                await self.client.stop_notify(self.char_uuid)
            except Exception:
                pass
            await self.client.disconnect()


async def scan_devices_info(timeout: float) -> list[tuple[str, str]]:
    ensure_bleak_available()
    devices = await BleakScanner.discover(timeout=timeout)
    out: list[tuple[str, str]] = []
    for dev in devices:
        out.append((dev.address, dev.name or "(no name)"))
    return out


async def scan_devices(timeout: float) -> None:
    devices = await scan_devices_info(timeout)
    if not devices:
        print("No BLE devices found.")
        return
    for address, name in devices:
        print(f"{address}  {name}")


async def resolve_device(address: str | None, name: str | None, timeout: float) -> str:
    if address:
        return address
    if not name:
        raise ValueError("Either --address or --name is required")

    ensure_bleak_available()
    devices = await BleakScanner.discover(timeout=timeout)
    matches = [d for d in devices if d.name and name.lower() in d.name.lower()]
    if not matches:
        raise RuntimeError(f"No BLE device matched name fragment: {name}")
    if len(matches) > 1:
        names = ", ".join(f"{d.address}({d.name})" for d in matches)
        raise RuntimeError(f"Multiple devices matched: {names}")
    return matches[0].address


def auto_pkg_path() -> pathlib.Path | None:
    roots = [
        pathlib.Path(__file__).resolve().parent.parent / "secboot" / "out" / "ota_pkg.bin",
        pathlib.Path.cwd() / "ota_pkg.bin",
    ]
    for p in roots:
        if p.is_file():
            return p
    return None


def parse_args() -> argparse.Namespace:
    ap = argparse.ArgumentParser(description="Minimal BLE OTA tool for sf32test/ex1")
    ap.add_argument("--scan", action="store_true", help="Scan nearby BLE devices and exit")
    ap.add_argument("--self-test", action="store_true", help="Run host-side mock BLE OTA self-test")
    ap.add_argument("--address", help="BLE device address")
    ap.add_argument("--name", help="BLE device name fragment, e.g. SF32_DEV")
    ap.add_argument("--file", help="Path to ota_pkg.bin")
    ap.add_argument("--scan-timeout", type=float, default=5.0, help="BLE scan timeout seconds")
    ap.add_argument("--data-cap", type=int, default=180, help="Optional cap for data bytes per DATA frame")
    return ap.parse_args()


class MockBleakClient:
    def __init__(self, device_id: str, hello_max_payload: int = 180) -> None:
        self.device_id = device_id
        self.mtu_size = 247
        self.hello_max_payload = hello_max_payload
        self.notify_cb = None
        self.connected = False
        self.mode = "image"
        self.slot_base = 0x12040000
        self.ftab_base = 0x12008000
        self.target_base = self.slot_base
        self.target_size = 0
        self.image_data = bytearray()
        self.ftab_data = bytearray()
        self.events: list[tuple] = []

    async def connect(self) -> bool:
        self.connected = True
        self.events.append(("connect", self.device_id))
        return True

    async def disconnect(self) -> bool:
        self.connected = False
        self.events.append(("disconnect",))
        return True

    async def start_notify(self, char_uuid: str, cb) -> None:
        self.notify_cb = cb
        self.events.append(("start_notify", char_uuid))

    async def stop_notify(self, char_uuid: str) -> None:
        self.events.append(("stop_notify", char_uuid))

    def _emit(self, frame: bytes) -> None:
        if self.notify_cb is None:
            raise RuntimeError("Notify callback not registered")
        self.notify_cb(1, bytearray(frame))

    async def write_gatt_char(self, char_uuid: str, frame: bytes, response: bool = False) -> None:
        self.events.append(("write", char_uuid, response, len(frame)))
        cmd, extra = parse_frame(frame)

        if cmd == CMD_HELLO:
            hello = struct.pack("<IIII", self.slot_base, 0x00100000, self.hello_max_payload, self.ftab_base)
            self._emit(build_response(CMD_HELLO, 0, hello))
            return

        if cmd == CMD_TARGET:
            self.target_base, self.target_size = struct.unpack("<II", extra)
            self.mode = "ftab"
            self.events.append(("target", self.target_base, self.target_size))
            self._emit(build_response(CMD_TARGET, 0))
            return

        if cmd == CMD_ERASE:
            if self.mode == "image":
                self.image_data.clear()
            else:
                self.ftab_data.clear()
            self.events.append(("erase", self.mode))
            self._emit(build_response(CMD_ERASE, 0))
            return

        if cmd == CMD_DATA:
            offset = struct.unpack_from("<I", extra)[0]
            chunk = extra[4:]
            buf = self.image_data if self.mode == "image" else self.ftab_data
            if offset != len(buf):
                self._emit(build_response(CMD_DATA, 2))
                return
            buf.extend(chunk)
            self.events.append(("data", self.mode, offset, len(chunk)))
            self._emit(build_response(CMD_DATA, 0))
            return

        if cmd == CMD_FINISH:
            size, crc = struct.unpack("<II", extra)
            buf = bytes(self.image_data if self.mode == "image" else self.ftab_data)
            actual_crc = crc32_ieee(buf)
            if size != len(buf) or crc != actual_crc:
                self._emit(build_response(CMD_FINISH, 3, struct.pack("<II", actual_crc, crc)))
                return
            self.events.append(("finish", self.mode, size, crc))
            self._emit(build_response(CMD_FINISH, 0))
            return

        if cmd == CMD_REBOOT:
            self.events.append(("reboot",))
            self._emit(build_response(CMD_REBOOT, 0))
            return

        if cmd == CMD_ABORT:
            self.events.append(("abort",))
            self._emit(build_response(CMD_ABORT, 0))
            return

        self._emit(build_response(cmd, 1))


async def run_self_test() -> int:
    ftab = bytes(range(64)) * 4
    image = bytes(range(256)) * 5
    mock = MockBleakClient("MOCK:OTA", hello_max_payload=96)

    client = BleOtaClient(
        device_id="MOCK:OTA",
        ftab=ftab,
        image=image,
        data_cap=60,
        client_factory=lambda _device_id: mock,
    )
    await client.run()

    if bytes(mock.image_data) != image:
        raise AssertionError("Self-test image payload mismatch")
    if bytes(mock.ftab_data) != ftab:
        raise AssertionError("Self-test ftab payload mismatch")

    event_names = [event[0] for event in mock.events]
    expected = ["connect", "start_notify", "erase", "finish", "target", "erase", "finish", "reboot", "stop_notify", "disconnect"]
    for name in expected:
        if name not in event_names:
            raise AssertionError(f"Self-test missing event: {name}")

    print("SELF-TEST PASS: mock BLE OTA sequence completed.")
    return 0


async def main() -> int:
    args = parse_args()

    if args.self_test:
        return await run_self_test()

    if args.scan:
        await scan_devices(args.scan_timeout)
        return 0

    pkg = pathlib.Path(args.file) if args.file else auto_pkg_path()
    if not pkg or not pkg.is_file():
        print("ERROR: ota_pkg.bin not found. Use --file <path>.")
        return 2

    ftab, image = parse_ota_pkg(str(pkg))
    print(f"Package: {pkg}")
    print(f"  ftab : {len(ftab)} bytes")
    print(f"  image: {len(image)} bytes")

    device_id = await resolve_device(args.address, args.name, args.scan_timeout)
    print(f"Using device: {device_id}")

    client = BleOtaClient(device_id=device_id, ftab=ftab, image=image, data_cap=args.data_cap)
    await client.run()
    return 0


if __name__ == "__main__":
    raise SystemExit(asyncio.run(main()))
