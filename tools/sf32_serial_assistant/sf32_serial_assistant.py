#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
SF32 串口助手：调试收发 + 官方 sftool UART 烧录 + 应用内 UART OTA（写 Slot B）。
"""
from __future__ import annotations

import os
import queue
import re
import struct
import subprocess
import sys
import threading
import tkinter as tk
from tkinter import filedialog, messagebox, scrolledtext, ttk

try:
    import serial
    from serial.tools import list_ports
except ImportError:
    print("请先安装: pip install -r requirements.txt", file=sys.stderr)
    sys.exit(1)

_app_dir = os.path.dirname(os.path.abspath(__file__))
if _app_dir not in sys.path:
    sys.path.insert(0, _app_dir)

from uart_ota_protocol import (
    CMD_DATA,
    CMD_ERASE_B,
    CMD_FINISH,
    CMD_HELLO,
    CMD_REBOOT,
    CMD_RSP,
    FrameParser,
    build_frame,
    crc32_ieee,
    parse_hello_rsp,
)


def list_serial_ports():
    return [p.device for p in list_ports.comports()]


class SerialReader(threading.Thread):
    def __init__(self, ser: serial.Serial, out_queue: queue.Queue, stop_event: threading.Event):
        super().__init__(daemon=True)
        self.ser = ser
        self.out_queue = out_queue
        self.stop_event = stop_event

    def run(self):
        while not self.stop_event.is_set():
            try:
                if self.ser.in_waiting:
                    data = self.ser.read(self.ser.in_waiting)
                    self.out_queue.put(("rx", data))
                else:
                    self.stop_event.wait(0.02)
            except (serial.SerialException, OSError):
                self.out_queue.put(("err", b""))
                break


class SF32SerialAssistant(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("SF32 串口助手 / 固件升级")
        self.geometry("920x640")
        self.minsize(720, 480)

        self.serial_port: serial.Serial | None = None
        self.reader_thread: SerialReader | None = None
        self.reader_stop = threading.Event()
        self.rx_queue: queue.Queue = queue.Queue()
        self.hex_display = tk.BooleanVar(value=False)

        self._build_ui()
        self.after(80, self._poll_rx)
        self.protocol("WM_DELETE_WINDOW", self._on_close)

    def _build_ui(self):
        nb = ttk.Notebook(self)
        nb.pack(fill=tk.BOTH, expand=True, padx=6, pady=6)

        tab_serial = ttk.Frame(nb)
        tab_flash = ttk.Frame(nb)
        tab_ota = ttk.Frame(nb)
        nb.add(tab_serial, text="串口调试")
        nb.add(tab_flash, text="固件升级 (sftool)")
        nb.add(tab_ota, text="UART OTA (Slot B)")

        self._build_tab_serial(tab_serial)
        self._build_tab_flash(tab_flash)
        self._build_tab_uart_ota(tab_ota)
        self._refresh_ports()

    def _build_tab_serial(self, parent):
        conn = ttk.LabelFrame(parent, text="连接")
        conn.pack(fill=tk.X, padx=4, pady=4)

        ttk.Label(conn, text="端口").grid(row=0, column=0, padx=4, pady=4, sticky=tk.W)
        self.port_var = tk.StringVar()
        self.port_combo = ttk.Combobox(conn, textvariable=self.port_var, width=14, state="readonly")
        self.port_combo.grid(row=0, column=1, padx=4, pady=4)
        ttk.Button(conn, text="刷新", command=self._refresh_ports).grid(row=0, column=2, padx=4)

        ttk.Label(conn, text="波特率").grid(row=0, column=3, padx=4)
        self.baud_var = tk.StringVar(value="1000000")
        baud = ttk.Combobox(
            conn,
            textvariable=self.baud_var,
            width=10,
            values=("1000000", "921600", "460800", "230400", "115200", "57600", "38400", "19200", "9600"),
        )
        baud.grid(row=0, column=4, padx=4)

        self.btn_open = ttk.Button(conn, text="打开串口", command=self._toggle_serial)
        self.btn_open.grid(row=0, column=5, padx=8)

        ttk.Checkbutton(conn, text="接收区 HEX 显示", variable=self.hex_display).grid(
            row=0, column=6, padx=8
        )

        rx_fr = ttk.LabelFrame(parent, text="接收")
        rx_fr.pack(fill=tk.BOTH, expand=True, padx=4, pady=4)
        self.rx_text = scrolledtext.ScrolledText(rx_fr, height=16, wrap=tk.WORD, font=("Consolas", 10))
        self.rx_text.pack(fill=tk.BOTH, expand=True, padx=4, pady=4)
        ttk.Button(rx_fr, text="清空接收", command=lambda: self.rx_text.delete("1.0", tk.END)).pack(
            anchor=tk.E, padx=4, pady=2
        )

        tx_fr = ttk.LabelFrame(parent, text="发送")
        tx_fr.pack(fill=tk.X, padx=4, pady=4)
        self.send_hex = tk.BooleanVar(value=False)
        self.append_crlf = tk.BooleanVar(value=True)
        ttk.Checkbutton(tx_fr, text="按 HEX 发送（空格分隔，如: 01 02 0A）", variable=self.send_hex).pack(
            anchor=tk.W, padx=4
        )
        ttk.Checkbutton(
            tx_fr, text="文本发送末尾加 CRLF（\\r\\n，便于 MSH 命令行）", variable=self.append_crlf
        ).pack(anchor=tk.W, padx=4)
        self.tx_text = scrolledtext.ScrolledText(tx_fr, height=5, wrap=tk.WORD, font=("Consolas", 10))
        self.tx_text.pack(fill=tk.X, padx=4, pady=4)
        ttk.Button(tx_fr, text="发送", command=self._send_data).pack(anchor=tk.E, padx=4, pady=4)

    def _build_tab_flash(self, parent):
        hint = (
            "说明：烧录使用思澈官方 sftool，与工程 uart_download.bat 相同。\n"
            "请先将板子进入 UART 下载模式（例如按住 Key1/PA34 再按复位，具体以硬件为准），再点「开始烧录」。"
        )
        ttk.Label(parent, text=hint, justify=tk.LEFT).pack(anchor=tk.W, padx=8, pady=6)

        f = ttk.LabelFrame(parent, text="参数")
        f.pack(fill=tk.X, padx=4, pady=4)

        row = 0
        ttk.Label(f, text="sftool.exe 路径").grid(row=row, column=0, sticky=tk.W, padx=4, pady=4)
        self.sftool_var = tk.StringVar(value=os.environ.get("SFTOOL", ""))
        ttk.Entry(f, textvariable=self.sftool_var, width=70).grid(row=row, column=1, padx=4, pady=4, sticky=tk.EW)
        ttk.Button(f, text="浏览…", command=self._browse_sftool).grid(row=row, column=2, padx=4)
        row += 1

        ttk.Label(f, text="COM 端口").grid(row=row, column=0, sticky=tk.W, padx=4, pady=4)
        self.flash_port_var = tk.StringVar()
        self.flash_port_combo = ttk.Combobox(f, textvariable=self.flash_port_var, width=14)
        self.flash_port_combo.grid(row=row, column=1, sticky=tk.W, padx=4, pady=4)
        ttk.Button(f, text="刷新列表", command=self._refresh_flash_ports).grid(row=row, column=2, padx=4)
        ttk.Button(f, text="同步串口页", command=self._sync_flash_port).grid(row=row, column=3, padx=4)
        row += 1

        ttk.Label(f, text="芯片型号 -c").grid(row=row, column=0, sticky=tk.W, padx=4, pady=4)
        self.chip_var = tk.StringVar(value="SF32LB52")
        ttk.Entry(f, textvariable=self.chip_var, width=20).grid(row=row, column=1, sticky=tk.W, padx=4)
        row += 1

        ttk.Label(f, text="bootloader.bin").grid(row=row, column=0, sticky=tk.W, padx=4, pady=4)
        self.bl_var = tk.StringVar()
        ttk.Entry(f, textvariable=self.bl_var, width=70).grid(row=row, column=1, padx=4, sticky=tk.EW)
        ttk.Button(f, text="…", command=lambda: self._pick_bin(self.bl_var)).grid(row=row, column=2)
        row += 1

        ttk.Label(f, text="main.bin").grid(row=row, column=0, sticky=tk.W, padx=4, pady=4)
        self.main_var = tk.StringVar()
        ttk.Entry(f, textvariable=self.main_var, width=70).grid(row=row, column=1, padx=4, sticky=tk.EW)
        ttk.Button(f, text="…", command=lambda: self._pick_bin(self.main_var)).grid(row=row, column=2)
        row += 1

        ttk.Label(f, text="ftab.bin").grid(row=row, column=0, sticky=tk.W, padx=4, pady=4)
        self.ftab_var = tk.StringVar()
        ttk.Entry(f, textvariable=self.ftab_var, width=70).grid(row=row, column=1, padx=4, sticky=tk.EW)
        ttk.Button(f, text="…", command=lambda: self._pick_bin(self.ftab_var)).grid(row=row, column=2)
        row += 1

        ttk.Label(f, text="可选：预设 build 目录（一键填三个 bin）").grid(
            row=row, column=0, sticky=tk.W, padx=4, pady=4
        )
        self.build_dir_var = tk.StringVar(
            value=os.path.normpath(
                os.path.join(os.path.dirname(__file__), "..", "..", "ex1", "rtt", "project", "build_sf32lb52-lcd_n16r8_test_hcpu")
            )
        )
        ttk.Entry(f, textvariable=self.build_dir_var, width=55).grid(row=row, column=1, padx=4, sticky=tk.EW)
        ttk.Button(f, text="浏览…", command=self._browse_build_dir).grid(row=row, column=2, padx=4)
        ttk.Button(f, text="填入路径", command=self._fill_from_build_dir).grid(row=row, column=3, padx=4)
        f.columnconfigure(1, weight=1)

        log_fr = ttk.LabelFrame(parent, text="sftool 输出")
        log_fr.pack(fill=tk.BOTH, expand=True, padx=4, pady=4)
        self.flash_log = scrolledtext.ScrolledText(log_fr, height=14, wrap=tk.WORD, font=("Consolas", 9))
        self.flash_log.pack(fill=tk.BOTH, expand=True, padx=4, pady=4)

        self.btn_flash = ttk.Button(parent, text="开始烧录 (write_flash --verify)", command=self._run_sftool)
        self.btn_flash.pack(pady=8)

    def _refresh_ports(self):
        ports = list_serial_ports()
        self.port_combo["values"] = ports
        if ports and not self.port_var.get():
            self.port_var.set(ports[0])
        self._refresh_flash_ports()
        if not self.flash_port_var.get() and self.port_var.get():
            self.flash_port_var.set(self.port_var.get())

    def _refresh_flash_ports(self):
        if not hasattr(self, "flash_port_combo"):
            return
        ports = list_serial_ports()
        self.flash_port_combo["values"] = ports
        if ports and not self.flash_port_var.get():
            self.flash_port_var.set(ports[0])

    def _sync_flash_port(self):
        self.flash_port_var.set(self.port_var.get())
        self._refresh_flash_ports()

    def _browse_sftool(self):
        p = filedialog.askopenfilename(title="选择 sftool.exe", filetypes=[("Executable", "*.exe"), ("All", "*.*")])
        if p:
            self.sftool_var.set(p)

    def _browse_build_dir(self):
        p = filedialog.askdirectory(title="选择 build_xxx_hcpu 目录")
        if p:
            self.build_dir_var.set(p)

    def _fill_from_build_dir(self):
        d = self.build_dir_var.get().strip()
        if not d or not os.path.isdir(d):
            messagebox.showerror("错误", "无效的 build 目录")
            return
        bl = os.path.join(d, "bootloader", "bootloader.bin")
        main = os.path.join(d, "main.bin")
        ftab = os.path.join(d, "ftab", "ftab.bin")
        for path, msg in [(bl, "bootloader"), (main, "main.bin"), (ftab, "ftab.bin")]:
            if not os.path.isfile(path):
                messagebox.showerror("错误", f"未找到: {path}\n请先完整编译工程。")
                return
        self.bl_var.set(bl)
        self.main_var.set(main)
        self.ftab_var.set(ftab)
        messagebox.showinfo("完成", "已填入三个固件路径。")

    def _pick_bin(self, var: tk.StringVar):
        p = filedialog.askopenfilename(title="选择 bin", filetypes=[("Binary", "*.bin"), ("All", "*.*")])
        if p:
            var.set(p)

    def _toggle_serial(self):
        if self.serial_port and self.serial_port.is_open:
            self._close_serial()
            self.btn_open.config(text="打开串口")
            return
        port = self.port_var.get().strip()
        if not port:
            messagebox.showwarning("提示", "请选择串口")
            return
        try:
            baud = int(self.baud_var.get())
        except ValueError:
            messagebox.showerror("错误", "波特率无效")
            return
        try:
            self.serial_port = serial.Serial(port=port, baudrate=baud, timeout=0.1)
        except serial.SerialException as e:
            messagebox.showerror("打开失败", str(e))
            return
        self.reader_stop.clear()
        self.reader_thread = SerialReader(self.serial_port, self.rx_queue, self.reader_stop)
        self.reader_thread.start()
        self.btn_open.config(text="关闭串口")

    def _close_serial(self):
        self.reader_stop.set()
        if self.reader_thread:
            self.reader_thread.join(timeout=1.0)
            self.reader_thread = None
        if self.serial_port:
            try:
                self.serial_port.close()
            except Exception:
                pass
            self.serial_port = None

    def _poll_rx(self):
        try:
            while True:
                kind, data = self.rx_queue.get_nowait()
                if kind == "rx":
                    if self.hex_display.get():
                        text = data.hex(" ").upper() + " "
                    else:
                        try:
                            text = data.decode("utf-8", errors="replace")
                        except Exception:
                            text = repr(data)
                    self.rx_text.insert(tk.END, text)
                    self.rx_text.see(tk.END)
                elif kind == "err":
                    self.rx_text.insert(tk.END, "\n[串口异常或已断开]\n")
        except queue.Empty:
            pass
        self.after(80, self._poll_rx)

    def _send_data(self):
        if not self.serial_port or not self.serial_port.is_open:
            messagebox.showwarning("提示", "请先打开串口")
            return
        raw = self.tx_text.get("1.0", tk.END).strip()
        if not raw:
            return
        try:
            if self.send_hex.get():
                parts = re.findall(r"[0-9A-Fa-f]{1,2}", raw.replace(",", " "))
                if not parts:
                    messagebox.showwarning("提示", "未解析到 HEX 字节")
                    return
                payload = bytes(int(x, 16) for x in parts)
            else:
                payload = raw.encode("utf-8")
                if self.append_crlf.get() and not raw.endswith("\n"):
                    payload += b"\r\n"
            self.serial_port.write(payload)
        except Exception as e:
            messagebox.showerror("发送失败", str(e))

    def _run_sftool(self):
        tool = self.sftool_var.get().strip()
        if not tool or not os.path.isfile(tool):
            messagebox.showerror("错误", "请设置有效的 sftool.exe 路径")
            return
        com = self.flash_port_var.get().strip()
        if not com:
            messagebox.showerror("错误", "请填写 COM 端口（如 COM8）")
            return
        chip = self.chip_var.get().strip() or "SF32LB52"
        bl, main, ft = self.bl_var.get().strip(), self.main_var.get().strip(), self.ftab_var.get().strip()
        for label, p in [("bootloader", bl), ("main", main), ("ftab", ft)]:
            if not p or not os.path.isfile(p):
                messagebox.showerror("错误", f"{label} 文件无效: {p}")
                return

        args = [
            tool,
            "-p",
            com,
            "-c",
            chip,
            "-m",
            "nor",
            "--after",
            "soft_reset",
            "write_flash",
            "--verify",
            f"{bl}@0x12010000",
            f"{main}@0x12020000",
            f"{ft}@0x12000000",
        ]
        self.flash_log.insert(tk.END, "执行: " + subprocess.list2cmdline(args) + "\n\n")
        self.flash_log.see(tk.END)
        self.btn_flash.config(state=tk.DISABLED)

        def work():
            try:
                cp = subprocess.run(
                    args,
                    capture_output=True,
                    text=True,
                    encoding="utf-8",
                    errors="replace",
                    creationflags=subprocess.CREATE_NO_WINDOW if sys.platform == "win32" else 0,
                )
                out = (cp.stdout or "") + (cp.stderr or "")
                rc = cp.returncode
            except Exception as e:
                out = str(e)
                rc = -1

            def done():
                self.flash_log.insert(tk.END, out + "\n")
                if rc == 0:
                    self.flash_log.insert(tk.END, "\n>>> 烧录成功 <<<\n")
                else:
                    self.flash_log.insert(tk.END, f"\n>>> 失败 exit={rc} <<<\n")
                self.flash_log.see(tk.END)
                self.btn_flash.config(state=tk.NORMAL)

            self.after(0, done)

        threading.Thread(target=work, daemon=True).start()

    def _build_tab_uart_ota(self, parent):
        hint = (
            "设备 msh 中先执行: uart_ota start（或勾选自动发送）。\n"
            "升级过程会暂停「串口调试」接收线程并独占该串口；完成后自动恢复。\n"
            "镜像写入物理 Slot B；从 B 启动需引导支持，或用 sftool 将 main.bin 写回 0x12020000。"
        )
        ttk.Label(parent, text=hint, justify=tk.LEFT).pack(anchor=tk.W, padx=8, pady=4)

        f = ttk.LabelFrame(parent, text="参数")
        f.pack(fill=tk.X, padx=4, pady=4)
        self.ota_file_var = tk.StringVar()
        ttk.Label(f, text="固件 bin").grid(row=0, column=0, sticky=tk.W, padx=4, pady=4)
        ttk.Entry(f, textvariable=self.ota_file_var, width=58).grid(row=0, column=1, padx=4, sticky=tk.EW)
        ttk.Button(f, text="浏览…", command=self._ota_pick_bin).grid(row=0, column=2, padx=4)
        self.ota_auto_start = tk.BooleanVar(value=True)
        ttk.Checkbutton(
            f,
            text="开始前发送: uart_ota start + CRLF（须已在「串口调试」打开同一串口）",
            variable=self.ota_auto_start,
        ).grid(row=1, column=0, columnspan=3, sticky=tk.W, padx=4)
        self.ota_chunk_var = tk.StringVar(value="256")
        ttk.Label(f, text="单包数据长度").grid(row=2, column=0, sticky=tk.W, padx=4, pady=4)
        ttk.Entry(f, textvariable=self.ota_chunk_var, width=8).grid(row=2, column=1, sticky=tk.W, padx=4)
        f.columnconfigure(1, weight=1)

        self.ota_progress = ttk.Progressbar(parent, mode="determinate", maximum=100)
        self.ota_progress.pack(fill=tk.X, padx=8, pady=4)

        log_fr = ttk.LabelFrame(parent, text="日志")
        log_fr.pack(fill=tk.BOTH, expand=True, padx=4, pady=4)
        self.ota_log = scrolledtext.ScrolledText(log_fr, height=14, wrap=tk.WORD, font=("Consolas", 9))
        self.ota_log.pack(fill=tk.BOTH, expand=True, padx=4, pady=4)

        self.btn_ota = ttk.Button(parent, text="开始写入 Slot B", command=self._uart_ota_go)
        self.btn_ota.pack(pady=8)

    def _ota_pick_bin(self):
        p = filedialog.askopenfilename(title="选择 bin", filetypes=[("Binary", "*.bin"), ("All", "*.*")])
        if p:
            self.ota_file_var.set(p)

    def _pause_serial_reader(self) -> bool:
        if not self.serial_port or not self.serial_port.is_open:
            return False
        self.reader_stop.set()
        if self.reader_thread:
            self.reader_thread.join(timeout=2.0)
            self.reader_thread = None
        try:
            self.serial_port.reset_input_buffer()
            self.serial_port.reset_output_buffer()
        except OSError:
            pass
        return True

    def _resume_serial_reader(self):
        if not self.serial_port or not self.serial_port.is_open:
            return
        self.reader_stop.clear()
        self.reader_thread = SerialReader(self.serial_port, self.rx_queue, self.reader_stop)
        self.reader_thread.start()

    def _uart_ota_log(self, msg: str):
        def append():
            self.ota_log.insert(tk.END, msg + "\n")
            self.ota_log.see(tk.END)

        self.after(0, append)

    def _uart_ota_go(self):
        if str(self.btn_ota.cget("state")) == str(tk.DISABLED):
            return
        path = self.ota_file_var.get().strip()
        if not path or not os.path.isfile(path):
            messagebox.showerror("错误", "请选择有效的 bin 文件")
            return
        try:
            chunk = int(self.ota_chunk_var.get().strip())
        except ValueError:
            messagebox.showerror("错误", "单包长度无效")
            return
        if chunk < 16 or chunk > 512:
            messagebox.showerror("错误", "单包长度建议 16～512")
            return
        if not self.serial_port or not self.serial_port.is_open:
            messagebox.showerror("错误", "请先在「串口调试」页打开串口")
            return
        self.btn_ota.config(state=tk.DISABLED)
        self.ota_progress["value"] = 0
        threading.Thread(target=self._uart_ota_worker, args=(path, chunk), daemon=True).start()

    def _uart_ota_worker(self, path: str, chunk: int):
        import time

        def wait_rsp(parser: FrameParser, expect_cmd: int, timeout: float):
            deadline = time.monotonic() + timeout
            while time.monotonic() < deadline:
                try:
                    if self.serial_port.in_waiting:
                        parser.append(self.serial_port.read(self.serial_port.in_waiting))
                except OSError as e:
                    self._uart_ota_log(f"读串口异常: {e}")
                    return None
                for cmd, pl in parser.pop_frames():
                    if cmd == expect_cmd:
                        return pl
                time.sleep(0.02)
            return None

        try:
            with open(path, "rb") as fp:
                data = fp.read()
        except OSError as e:
            self._uart_ota_log(f"读文件失败: {e}")
            self.after(0, lambda: self.btn_ota.config(state=tk.NORMAL))
            return

        icrc = crc32_ieee(data)
        if not self._pause_serial_reader():
            self._uart_ota_log("无法独占串口")
            self.after(0, lambda: self.btn_ota.config(state=tk.NORMAL))
            return

        parser = FrameParser()
        try:
            if self.ota_auto_start.get():
                try:
                    self.serial_port.write(b"uart_ota start\r\n")
                    time.sleep(0.25)
                except OSError as e:
                    self._uart_ota_log(f"发送 start 失败: {e}")
                    return

            try:
                self.serial_port.write(build_frame(CMD_HELLO, b""))
            except OSError as e:
                self._uart_ota_log(f"发送 HELLO 失败: {e}")
                return

            pl = wait_rsp(parser, CMD_RSP | CMD_HELLO, 3.0)
            hi = parse_hello_rsp(pl) if pl else None
            if not hi:
                self._uart_ota_log("等待 HELLO 响应超时（请确认已 uart_ota start，且未在 shell 里打字）")
                return
            base, max_img, max_pl = hi
            slot_name = "B" if base == 0x123A0000 else ("A" if base == 0x12020000 else f"@0x{base:08X}")
            self._uart_ota_log(
                f"HELLO OK: target Slot {slot_name} base=0x{base:08X} max_image={max_img} max_payload={max_pl}"
            )
            use_chunk = min(chunk, max_pl - 4)
            if use_chunk < 16:
                self._uart_ota_log("MCU 单帧 payload 过小")
                return
            if len(data) > max_img:
                self._uart_ota_log(f"文件过大: {len(data)} > {max_img}")
                return

            try:
                self.serial_port.write(build_frame(CMD_ERASE_B, b""))
            except OSError as e:
                self._uart_ota_log(f"发送 ERASE 失败: {e}")
                return
            pl = wait_rsp(parser, CMD_RSP | CMD_ERASE_B, 120.0)
            if not pl or pl[0] != 0:
                self._uart_ota_log(f"ERASE 失败: {pl!r}")
                return
            self._uart_ota_log(f"ERASE target Slot {slot_name} 完成")

            off = 0
            total = len(data)
            n = 0
            while off < total:
                n += 1
                part = data[off : off + use_chunk]
                payload = struct.pack("<I", off) + part
                try:
                    self.serial_port.write(build_frame(CMD_DATA, payload))
                except OSError as e:
                    self._uart_ota_log(f"DATA 发送失败 @{off}: {e}")
                    return
                pl = wait_rsp(parser, CMD_RSP | CMD_DATA, 8.0)
                if not pl or pl[0] != 0:
                    self._uart_ota_log(f"DATA 失败 @{off}: {pl!r}")
                    return
                off += len(part)
                if n % 16 == 0 or off >= total:
                    pct = min(99, int(100 * off / total)) if total else 100
                    self.after(0, lambda p=pct: self.ota_progress.config(value=p))

            self._uart_ota_log("数据发送完毕，MCU 校验中…")
            fin = struct.pack("<II", total, icrc)
            try:
                self.serial_port.write(build_frame(CMD_FINISH, fin))
            except OSError as e:
                self._uart_ota_log(f"发送 FINISH 失败: {e}")
                return
            pl = wait_rsp(parser, CMD_RSP | CMD_FINISH, 90.0)
            if not pl or pl[0] != 0:
                if pl and pl[0] == 3 and len(pl) >= 9:
                    c_flash, c_host = struct.unpack_from("<II", pl, 1)
                    self._uart_ota_log(
                        f"CRC 不一致: flash=0x{c_flash:08X} host=0x{c_host:08X}"
                    )
                else:
                    self._uart_ota_log(f"FINISH 失败: {pl!r}")
                return
            self.after(0, lambda: self.ota_progress.config(value=100))
            self._uart_ota_log("写入并校验成功！")

            reboot_event = threading.Event()
            reboot_choice = [False]

            def ask_reboot():
                yes = messagebox.askyesno(
                    f"切换到 Slot {slot_name}",
                    f"固件已写入 Slot {slot_name} 并校验通过。\n是否立即设置一次性试运行标志并重启 MCU？\n"
                    "（启动成功后将自动提交为新的活动分区）",
                )
                reboot_choice[0] = yes
                reboot_event.set()

            self.after(0, ask_reboot)
            reboot_event.wait(timeout=60)

            if reboot_choice[0]:
                try:
                    self.serial_port.write(build_frame(CMD_REBOOT, b""))
                except OSError as e:
                    self._uart_ota_log(f"发送 REBOOT 失败: {e}")
                    return
                pl = wait_rsp(parser, CMD_RSP | CMD_REBOOT, 5.0)
                if pl and pl[0] == 0:
                    self._uart_ota_log(f"MCU 已设置 TRY->Slot {slot_name}，正在重启…")
                else:
                    self._uart_ota_log(f"REBOOT 响应异常: {pl!r}，可手动执行 uart_ota reboot")
            else:
                self._uart_ota_log("未重启。可在 msh 执行 uart_ota reboot 手动切换，或 uart_ota exit 恢复 shell。")
        finally:
            self._resume_serial_reader()
            self.after(0, lambda: self.btn_ota.config(state=tk.NORMAL))

    def _on_close(self):
        self._close_serial()
        self.destroy()


def main():
    app = SF32SerialAssistant()
    app.mainloop()


if __name__ == "__main__":
    main()
