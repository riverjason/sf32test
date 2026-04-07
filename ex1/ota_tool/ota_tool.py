"""
SF32LB52 Secure OTA Upgrade Tool
=================================
Select a single ota_pkg.bin, click Upgrade — done.

Package format (produced by gen_sec_img.bat):
  [MAGIC "SFOT" 4B] [VER 4B] [FTAB_SIZE 4B] [IMG_SIZE 4B]
  [FTAB_DATA ...] [IMG_DATA ...]

Requirements:  pip install pyserial
"""

import tkinter as tk
from tkinter import ttk, filedialog, messagebox
import struct
import zlib
import threading
import time
import os
import sys
import pathlib

try:
    import serial
    import serial.tools.list_ports
except ImportError:
    print("ERROR: pyserial not installed.  Run:  pip install pyserial")
    sys.exit(1)

# --------------- Protocol constants (must match uart_ota.c) ---------------

SOF = bytes([0x55, 0xAA])

CMD_HELLO   = 0x01
CMD_ERASE   = 0x02
CMD_DATA    = 0x03
CMD_FINISH  = 0x04
CMD_ABORT   = 0x05
CMD_REBOOT  = 0x06
CMD_TARGET  = 0x07
CMD_RSP     = 0x80

FTAB_REGION_SIZE  = 0x00008000   # 32 KiB per ftab slot

OTA_PKG_MAGIC = b"SFOT"
DEFAULT_BAUD  = 1000000
DATA_CHUNK    = 508          # offset(4) + data(504)


# --------------- OTA package parse ----------------------------------------

def parse_ota_pkg(path: str):
    """Return (ftab_bytes, image_bytes) from an ota_pkg.bin."""
    raw = pathlib.Path(path).read_bytes()
    if len(raw) < 16:
        raise ValueError("File too small to be an OTA package")

    magic, ver, ftab_sz, img_sz = struct.unpack_from("<4sIII", raw)
    if magic != OTA_PKG_MAGIC:
        raise ValueError(f"Bad magic: {magic!r}  (expected {OTA_PKG_MAGIC!r})")

    expected = 16 + ftab_sz + img_sz
    if len(raw) < expected:
        raise ValueError(f"Package truncated: have {len(raw)}, need {expected}")

    ftab = raw[16 : 16 + ftab_sz]
    img  = raw[16 + ftab_sz : 16 + ftab_sz + img_sz]
    return ftab, img


# --------------- Frame encode / decode ------------------------------------

def build_frame(cmd: int, payload: bytes = b"") -> bytes:
    body = bytes([cmd]) + struct.pack("<HH", len(payload), 0) + payload
    crc = zlib.crc32(body) & 0xFFFFFFFF
    return SOF + body + struct.pack("<I", crc)


def try_parse_response(buf: bytearray):
    while True:
        idx = buf.find(SOF)
        if idx < 0:
            buf.clear()
            return None
        if idx > 0:
            del buf[:idx]
        if len(buf) < 7:
            return None
        cmd = buf[2]
        plen = buf[3] | (buf[4] << 8)
        need = 7 + plen + 4
        if need > 600:
            del buf[:2]
            continue
        if len(buf) < need:
            return None
        crc_body = bytes(buf[2:7 + plen])
        crc_rx = struct.unpack_from("<I", buf, 7 + plen)[0]
        if zlib.crc32(crc_body) & 0xFFFFFFFF != crc_rx:
            del buf[:2]
            continue
        payload = bytes(buf[7:7 + plen])
        del buf[:need]
        status = payload[0] if payload else 0xFF
        extra  = payload[1:] if len(payload) > 1 else b""
        return (cmd, status, extra, need)


# --------------- OTA Worker -----------------------------------------------

class OtaWorker:
    def __init__(self, port, baud, ftab_data, img_data, log_fn, progress_fn, done_fn):
        self.port = port
        self.baud = baud
        self.ftab_data = ftab_data
        self.img_data  = img_data
        self.log = log_fn
        self.progress = progress_fn
        self.done = done_fn
        self._cancel = False
        self._ser = None

    def cancel(self):
        self._cancel = True

    def _open(self):
        self._ser = serial.Serial(self.port, self.baud, timeout=0.1)

    def _close(self):
        if self._ser and self._ser.is_open:
            self._ser.close()
            self._ser = None

    def _send(self, cmd, payload=b""):
        self._ser.write(build_frame(cmd, payload))

    def _recv(self, timeout_s=5.0, expect_cmd=None):
        buf = bytearray()
        t0 = time.monotonic()
        while time.monotonic() - t0 < timeout_s:
            if self._cancel:
                raise RuntimeError("Cancelled")
            chunk = self._ser.read(256)
            if chunk:
                buf.extend(chunk)
            r = try_parse_response(buf)
            if r is not None:
                cmd, status, extra, _ = r
                if expect_cmd is not None and cmd != expect_cmd:
                    continue
                return cmd, status, extra
            if not chunk:
                time.sleep(0.01)
        raise TimeoutError(f"No response within {timeout_s}s")

    # ---------- protocol helpers ----------

    def _enter_ota_mode(self):
        self.log("Sending 'uart_ota start' ...")
        self._ser.reset_input_buffer()
        self._ser.write(b"uart_ota start\r\n")
        # Wait until firmware prints OTA banner (BLE/log on same UART can delay shell)
        banner = b"*** UART_OTA_MODE ***"
        buf = bytearray()
        t0 = time.monotonic()
        while time.monotonic() - t0 < 4.0:
            chunk = self._ser.read(512)
            if chunk:
                buf.extend(chunk)
                if banner in buf:
                    self.log("  OTA mode entered.")
                    break
            else:
                time.sleep(0.02)
        else:
            self.log("  [WARN] OTA banner not seen in 4s; continuing anyway (HELLO may timeout).")
        self._ser.reset_input_buffer()

    def _cmd_hello(self):
        self._send(CMD_HELLO)
        _, st, extra = self._recv(3.0, CMD_RSP | CMD_HELLO)
        if st != 0:
            raise RuntimeError(f"HELLO failed (status={st})")
        if len(extra) >= 16:
            base, mx, pl, ftab = struct.unpack_from("<IIII", extra)
            self.log(f"  Slot 0x{base:08X}  max {mx//1024}KB  chunk {pl}  ftab 0x{ftab:08X}")
            self._ftab_base = ftab
        elif len(extra) >= 12:
            base, mx, pl = struct.unpack_from("<III", extra)
            self.log(f"  Slot 0x{base:08X}  max {mx//1024}KB  chunk {pl}")
            self._ftab_base = 0
        else:
            raise RuntimeError("HELLO response too short")

    def _cmd_erase(self, label, timeout=60.0):
        self.log(f"Erasing {label} ...")
        self._send(CMD_ERASE)
        _, st, _ = self._recv(timeout, CMD_RSP | CMD_ERASE)
        if st != 0:
            raise RuntimeError(f"Erase {label} failed ({st})")
        self.log(f"  Erase {label} OK")

    def _send_blob(self, data: bytes, label: str, pct_base=0, pct_span=100):
        total = len(data)
        sent  = 0
        chunk_body = DATA_CHUNK - 4
        self.log(f"Sending {label} ({total:,} bytes) ...")
        while sent < total:
            if self._cancel:
                raise RuntimeError("Cancelled")
            end = min(sent + chunk_body, total)
            pl  = struct.pack("<I", sent) + data[sent:end]
            self._send(CMD_DATA, pl)
            _, st, _ = self._recv(5.0, CMD_RSP | CMD_DATA)
            if st != 0:
                raise RuntimeError(f"DATA @{sent} failed ({st})")
            sent = end
            pct = pct_base + int(sent * pct_span / total)
            self.progress(pct, f"{label}: {sent:,}/{total:,}")
        crc = zlib.crc32(data) & 0xFFFFFFFF
        return total, crc

    def _cmd_finish(self, size, crc, label):
        self.log(f"Verifying {label} on device ...")
        self._send(CMD_FINISH, struct.pack("<II", size, crc))
        _, st, extra = self._recv(30.0, CMD_RSP | CMD_FINISH)
        if st == 3 and len(extra) >= 8:
            dc, ec = struct.unpack_from("<II", extra)
            raise RuntimeError(f"CRC mismatch: dev 0x{dc:08X} vs 0x{ec:08X}")
        if st != 0:
            raise RuntimeError(f"FINISH {label} failed ({st})")
        self.log(f"  {label} CRC OK")

    def _cmd_target(self, base, size):
        self.log(f"Target -> 0x{base:08X} ({size//1024}KB)")
        self._send(CMD_TARGET, struct.pack("<II", base, size))
        _, st, _ = self._recv(3.0, CMD_RSP | CMD_TARGET)
        if st != 0:
            raise RuntimeError(f"TARGET failed ({st})")

    def _cmd_reboot(self):
        self.log("Rebooting MCU ...")
        self._send(CMD_REBOOT)
        try:
            _, st, _ = self._recv(5.0, CMD_RSP | CMD_REBOOT)
            if st != 0:
                raise RuntimeError(f"REBOOT failed ({st})")
        except TimeoutError:
            pass
        self.log("  Device rebooting ...")

    # ---------- main sequence ----------

    def run(self):
        ok = False
        try:
            self._open()
            self._enter_ota_mode()
            self._cmd_hello()

            if not self._ftab_base:
                raise RuntimeError("MCU did not report ftab address (firmware too old?)")

            # Phase 1 — image → inactive slot  (0%–70%)
            self.log("\n--- Phase 1/3: Image -> inactive slot ---")
            self._cmd_erase("image slot", 60.0)
            img_sz, img_crc = self._send_blob(self.img_data, "image", 0, 70)
            self._cmd_finish(img_sz, img_crc, "image")

            # Phase 2 — ftab → inactive ftab  (70%–95%)
            self.log("\n--- Phase 2/3: Ftab -> inactive ftab ---")
            self._cmd_target(self._ftab_base, FTAB_REGION_SIZE)
            self._cmd_erase("ftab region", 10.0)
            ft_sz, ft_crc = self._send_blob(self.ftab_data, "ftab", 70, 25)
            self._cmd_finish(ft_sz, ft_crc, "ftab")

            # Phase 3 — reboot into new slot  (95%–100%)
            self.log("\n--- Phase 3/3: Reboot ---")
            self.progress(95, "Rebooting ...")
            self._cmd_reboot()
            self.progress(100, "Done")

            self.log("\n=== OTA Complete ===")
            self.log("Bootloader reads inactive ftab, configures AES+alias, verifies, boots.")
            ok = True

        except Exception as e:
            self.log(f"\n[ERROR] {e}")
        finally:
            self._close()
            self.done(ok)


# --------------- GUI ------------------------------------------------------

class OtaApp(tk.Tk):
    BG  = "#1e1e2e";  FG  = "#cdd6f4";  ACC = "#89b4fa"
    OK  = "#a6e3a1";  ERR = "#f38ba8"
    EBG = "#313244";  BBG = "#45475a"

    def __init__(self):
        super().__init__()
        self.title("SF32LB52 Secure OTA Tool")
        self.geometry("660x520")
        self.configure(bg=self.BG)
        self.resizable(True, True)
        self._worker = None
        self._build_ui()
        self._scan_ports()
        self._auto_detect()

    def _build_ui(self):
        s = ttk.Style(self)
        s.theme_use("clam")
        s.configure(".", background=self.BG, foreground=self.FG, fieldbackground=self.EBG)
        s.configure("TLabel",  background=self.BG, foreground=self.FG, font=("Segoe UI", 10))
        s.configure("TButton", background=self.BBG, foreground=self.FG, font=("Segoe UI", 10))
        s.map("TButton", background=[("active", self.ACC)])
        s.configure("Accent.TButton", background=self.ACC, foreground="#1e1e2e",
                     font=("Segoe UI", 12, "bold"))
        s.map("Accent.TButton", background=[("active", "#74c7ec")])
        s.configure("TCombobox", fieldbackground=self.EBG, foreground=self.FG)
        s.configure("TEntry",    fieldbackground=self.EBG, foreground=self.FG)
        s.configure("TLabelframe",       background=self.BG, foreground=self.ACC)
        s.configure("TLabelframe.Label", background=self.BG, foreground=self.ACC,
                     font=("Segoe UI", 10, "bold"))
        pad = dict(padx=8, pady=4)

        # ---- serial ----
        f1 = ttk.LabelFrame(self, text="Serial Port")
        f1.pack(fill="x", **pad)
        r = ttk.Frame(f1); r.pack(fill="x", **pad)
        ttk.Label(r, text="Port:").pack(side="left")
        self.combo_port = ttk.Combobox(r, width=12, state="readonly")
        self.combo_port.pack(side="left", padx=4)
        ttk.Button(r, text="Refresh", command=self._scan_ports).pack(side="left", padx=4)
        ttk.Label(r, text="Baud:").pack(side="left", padx=(16,0))
        self.var_baud = tk.StringVar(value=str(DEFAULT_BAUD))
        ttk.Entry(r, textvariable=self.var_baud, width=10).pack(side="left", padx=4)

        # ---- OTA file (single) ----
        f2 = ttk.LabelFrame(self, text="OTA Package")
        f2.pack(fill="x", **pad)
        r2 = ttk.Frame(f2); r2.pack(fill="x", **pad)
        ttk.Label(r2, text="File:").pack(side="left")
        self.var_pkg = tk.StringVar()
        ttk.Entry(r2, textvariable=self.var_pkg, width=56).pack(side="left", padx=4, fill="x", expand=True)
        ttk.Button(r2, text="Browse", command=self._browse).pack(side="left")

        # ---- action ----
        fa = ttk.Frame(self); fa.pack(fill="x", **pad)
        self.btn_go = ttk.Button(fa, text="Start Upgrade", style="Accent.TButton",
                                  command=self._on_start)
        self.btn_go.pack(side="left", ipadx=20, ipady=4)
        self.btn_cancel = ttk.Button(fa, text="Cancel", command=self._on_cancel, state="disabled")
        self.btn_cancel.pack(side="left", padx=8)
        self.lbl_st = ttk.Label(fa, text="Ready")
        self.lbl_st.pack(side="left", padx=16)

        # ---- progress ----
        self.pbar = ttk.Progressbar(self, maximum=100)
        self.pbar.pack(fill="x", padx=8, pady=4)

        # ---- log ----
        fl = ttk.LabelFrame(self, text="Log")
        fl.pack(fill="both", expand=True, **pad)
        self.txt = tk.Text(fl, bg="#11111b", fg=self.FG, font=("Consolas", 9),
                           insertbackground=self.FG, relief="flat", wrap="word", height=12)
        sb = ttk.Scrollbar(fl, command=self.txt.yview)
        self.txt.configure(yscrollcommand=sb.set)
        sb.pack(side="right", fill="y")
        self.txt.pack(fill="both", expand=True)

    # ---- helpers ----

    def _scan_ports(self):
        ports = sorted(p.device for p in serial.tools.list_ports.comports())
        self.combo_port["values"] = ports
        if ports and self.combo_port.get() not in ports:
            self.combo_port.current(0)

    def _auto_detect(self):
        for base in [pathlib.Path(__file__).resolve().parent.parent / "secboot" / "out",
                     pathlib.Path(__file__).resolve().parent.parent.parent / "ex1" / "secboot" / "out"]:
            pkg = base / "ota_pkg.bin"
            if pkg.is_file():
                self.var_pkg.set(str(pkg))
                self._log(f"Auto-detect: {pkg}")
                return

    def _browse(self):
        p = filedialog.askopenfilename(filetypes=[("OTA package", "*.bin"), ("All", "*.*")])
        if p:
            self.var_pkg.set(p)

    def _log(self, msg):
        self.txt.insert("end", msg + "\n"); self.txt.see("end")

    def _log_t(self, msg):
        self.after(0, self._log, msg)

    def _prog_t(self, pct, txt):
        self.after(0, lambda: (setattr(self.pbar, "value", None) or
                               self.pbar.configure(value=pct),
                               self.lbl_st.configure(text=txt)))
        self.after(0, self.pbar.configure, {"value": pct})
        self.after(0, self.lbl_st.configure, {"text": txt})

    def _done_t(self, ok):
        def f():
            self.btn_go.configure(state="normal")
            self.btn_cancel.configure(state="disabled")
            self._worker = None
            if ok:
                self.lbl_st.configure(text="Upgrade complete!", foreground=self.OK)
            else:
                self.lbl_st.configure(text="Upgrade FAILED", foreground=self.ERR)
        self.after(0, f)

    # ---- actions ----

    def _on_start(self):
        port = self.combo_port.get()
        if not port:
            messagebox.showwarning("Port", "Select a COM port."); return
        pkg_path = self.var_pkg.get().strip()
        if not pkg_path or not os.path.isfile(pkg_path):
            messagebox.showwarning("File", "Select a valid ota_pkg.bin."); return

        try:
            ftab, img = parse_ota_pkg(pkg_path)
        except Exception as e:
            messagebox.showerror("Bad package", str(e)); return

        self._log(f"Package: ftab {len(ftab):,}B  image {len(img):,}B")

        self.txt.delete("1.0", "end")
        self.pbar["value"] = 0
        self.lbl_st.configure(text="Upgrading...", foreground=self.FG)
        self.btn_go.configure(state="disabled")
        self.btn_cancel.configure(state="normal")

        self._worker = OtaWorker(port, int(self.var_baud.get()),
                                  ftab, img,
                                  self._log_t, self._prog_t, self._done_t)
        threading.Thread(target=self._worker.run, daemon=True).start()

    def _on_cancel(self):
        if self._worker:
            self._worker.cancel()


if __name__ == "__main__":
    OtaApp().mainloop()
