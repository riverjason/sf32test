# -*- coding: utf-8 -*-
"""UART OTA framing (must match ex1/rtt/src/uart_ota.c)."""
from __future__ import annotations

import struct
import zlib
from typing import List, Tuple

SOF = bytes((0x55, 0xAA))

CMD_HELLO = 0x01
CMD_ERASE_B = 0x02
CMD_DATA = 0x03
CMD_FINISH = 0x04
CMD_ABORT = 0x05
CMD_REBOOT = 0x06
CMD_RSP = 0x80


def crc32_ieee(data: bytes) -> int:
    return zlib.crc32(data) & 0xFFFFFFFF


def build_frame(cmd: int, payload: bytes = b"") -> bytes:
    plen = len(payload)
    head = bytes((cmd, plen & 0xFF, plen >> 8, 0, 0))
    body = head + payload
    c = crc32_ieee(body)
    return SOF + body + struct.pack("<I", c)


class FrameParser:
    """Incremental parser; drops bad CRC / resync on SOF."""

    def __init__(self, max_payload: int = 512) -> None:
        self._b = bytearray()
        self._max_plen = max_payload

    def append(self, data: bytes) -> None:
        self._b.extend(data)
        if len(self._b) > 65536:
            self._b = self._b[-4096:]

    def pop_frames(self) -> List[Tuple[int, bytes]]:
        out: List[Tuple[int, bytes]] = []
        while True:
            i = self._b.find(SOF)
            if i < 0:
                if len(self._b) > 4096:
                    self._b = self._b[-2048:]
                break
            if i > 0:
                del self._b[:i]
            if len(self._b) < 7:
                break
            plen = self._b[3] | (self._b[4] << 8)
            if plen > self._max_plen:
                del self._b[:2]
                continue
            need = 11 + plen
            if len(self._b) < need:
                break
            body_for_crc = bytes(self._b[2 : need - 4])
            crc_rx = struct.unpack("<I", self._b[need - 4 : need])[0]
            if crc32_ieee(body_for_crc) != crc_rx:
                del self._b[:2]
                continue
            cmd = self._b[2]
            payload = bytes(self._b[7 : 7 + plen])
            out.append((cmd, payload))
            del self._b[:need]
        return out


def parse_hello_rsp(payload: bytes) -> tuple[int, int, int] | None:
    """Returns (target_slot_base, max_image, max_payload) or None."""
    if len(payload) < 1 + 12:
        return None
    if payload[0] != 0:
        return None
    base, max_img, max_pl = struct.unpack_from("<III", payload, 1)
    return base, max_img, max_pl
