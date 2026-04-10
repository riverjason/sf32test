import asyncio
import importlib.util
import pathlib
import struct
import sys
import tempfile
import unittest


MODULE_PATH = pathlib.Path(__file__).with_name("ble_ota_tool.py")
SPEC = importlib.util.spec_from_file_location("ble_ota_tool", MODULE_PATH)
ble_ota_tool = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
sys.modules[SPEC.name] = ble_ota_tool
SPEC.loader.exec_module(ble_ota_tool)


class BleOtaToolTests(unittest.TestCase):
    def test_parse_ota_pkg(self) -> None:
        ftab = b"FTAB" * 8
        image = b"IMG" * 37
        raw = struct.pack("<4sIII", ble_ota_tool.OTA_PKG_MAGIC, 1, len(ftab), len(image)) + ftab + image

        with tempfile.TemporaryDirectory() as tmpdir:
            path = pathlib.Path(tmpdir) / "ota_pkg.bin"
            path.write_bytes(raw)
            out_ftab, out_image = ble_ota_tool.parse_ota_pkg(str(path))

        self.assertEqual(out_ftab, ftab)
        self.assertEqual(out_image, image)

    def test_frame_parser_response(self) -> None:
        parser = ble_ota_tool.FrameParser()
        payload = struct.pack("<IIII", 0x12040000, 0x00100000, 96, 0x12008000)
        frame = ble_ota_tool.build_response(ble_ota_tool.CMD_HELLO, 0, payload)

        parser.append(b"\x00\x01junk")
        parser.append(frame[:5])
        self.assertIsNone(parser.pop_frame())
        parser.append(frame[5:])

        cmd, status, extra = parser.pop_frame()
        self.assertEqual(cmd, ble_ota_tool.CMD_RSP | ble_ota_tool.CMD_HELLO)
        self.assertEqual(status, 0)
        self.assertEqual(extra, payload)

    def test_mock_self_test(self) -> None:
        rc = asyncio.run(ble_ota_tool.run_self_test())
        self.assertEqual(rc, 0)


if __name__ == "__main__":
    unittest.main()
