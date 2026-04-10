"""
Simple BLE OTA GUI for sf32test/ex1.

Requirements:
  pip install bleak

Usage:
  python ble_ota_gui.py
"""

from __future__ import annotations

import asyncio
import pathlib
import sys
import threading
import tkinter as tk
from tkinter import filedialog, messagebox, ttk

from ble_ota_tool import BleOtaClient, auto_pkg_path, ensure_bleak_available, parse_ota_pkg, scan_devices_info


class BleOtaGui(tk.Tk):
    BG = "#1e1e2e"
    FG = "#cdd6f4"
    ACC = "#89b4fa"
    OK = "#a6e3a1"
    ERR = "#f38ba8"
    EBG = "#313244"
    BBG = "#45475a"

    def __init__(self) -> None:
        super().__init__()
        self.title("SF32 BLE OTA Tool")
        self.geometry("760x600")
        self.configure(bg=self.BG)
        self.resizable(True, True)

        self._busy = False
        self._devices: dict[str, str] = {}

        self.var_pkg = tk.StringVar()
        self.var_scan_timeout = tk.StringVar(value="8")
        self.var_data_cap = tk.StringVar(value="60")
        self.var_status = tk.StringVar(value="Ready")

        self._build_ui()
        self._auto_detect_pkg()
        self._check_ble_backend()

    def _build_ui(self) -> None:
        style = ttk.Style(self)
        style.theme_use("clam")
        style.configure(".", background=self.BG, foreground=self.FG, fieldbackground=self.EBG)
        style.configure("TLabel", background=self.BG, foreground=self.FG, font=("Segoe UI", 10))
        style.configure("TButton", background=self.BBG, foreground=self.FG, font=("Segoe UI", 10))
        style.map("TButton", background=[("active", self.ACC)])
        style.configure("Accent.TButton", background=self.ACC, foreground="#1e1e2e", font=("Segoe UI", 11, "bold"))
        style.map("Accent.TButton", background=[("active", "#74c7ec")])
        style.configure("TEntry", fieldbackground=self.EBG, foreground=self.FG)
        style.configure("TCombobox", fieldbackground=self.EBG, foreground=self.FG)
        style.configure("TLabelframe", background=self.BG, foreground=self.ACC)
        style.configure("TLabelframe.Label", background=self.BG, foreground=self.ACC, font=("Segoe UI", 10, "bold"))

        pad = dict(padx=8, pady=4)

        dev_frame = ttk.LabelFrame(self, text="BLE Device")
        dev_frame.pack(fill="x", **pad)
        row = ttk.Frame(dev_frame)
        row.pack(fill="x", **pad)
        ttk.Label(row, text="Device:").pack(side="left")
        self.combo_device = ttk.Combobox(row, state="readonly", width=58)
        self.combo_device.pack(side="left", padx=4, fill="x", expand=True)
        self.btn_scan = ttk.Button(row, text="Scan", command=self._on_scan)
        self.btn_scan.pack(side="left", padx=4)
        ttk.Label(row, text="Timeout:").pack(side="left", padx=(12, 0))
        ttk.Entry(row, textvariable=self.var_scan_timeout, width=6).pack(side="left", padx=4)

        pkg_frame = ttk.LabelFrame(self, text="OTA Package")
        pkg_frame.pack(fill="x", **pad)
        row = ttk.Frame(pkg_frame)
        row.pack(fill="x", **pad)
        ttk.Label(row, text="File:").pack(side="left")
        ttk.Entry(row, textvariable=self.var_pkg).pack(side="left", padx=4, fill="x", expand=True)
        ttk.Button(row, text="Browse", command=self._on_browse).pack(side="left")

        opt_frame = ttk.LabelFrame(self, text="Upgrade Options")
        opt_frame.pack(fill="x", **pad)
        row = ttk.Frame(opt_frame)
        row.pack(fill="x", **pad)
        ttk.Label(row, text="Data Cap:").pack(side="left")
        ttk.Entry(row, textvariable=self.var_data_cap, width=8).pack(side="left", padx=4)
        ttk.Label(row, text="bytes per DATA frame").pack(side="left")

        action = ttk.Frame(self)
        action.pack(fill="x", **pad)
        self.btn_start = ttk.Button(action, text="Connect && Upgrade", style="Accent.TButton", command=self._on_start)
        self.btn_start.pack(side="left", ipadx=20, ipady=4)
        ttk.Label(action, textvariable=self.var_status).pack(side="left", padx=16)

        self.pbar = ttk.Progressbar(self, maximum=100)
        self.pbar.pack(fill="x", padx=8, pady=4)

        log_frame = ttk.LabelFrame(self, text="Log")
        log_frame.pack(fill="both", expand=True, **pad)
        self.txt = tk.Text(log_frame, bg="#11111b", fg=self.FG, font=("Consolas", 9), insertbackground=self.FG, relief="flat")
        sb = ttk.Scrollbar(log_frame, command=self.txt.yview)
        self.txt.configure(yscrollcommand=sb.set)
        sb.pack(side="right", fill="y")
        self.txt.pack(fill="both", expand=True)

    def _set_busy(self, busy: bool) -> None:
        self._busy = busy
        state = "disabled" if busy else "normal"
        self.btn_scan.configure(state=state)
        self.btn_start.configure(state=state)

    def _log(self, msg: str) -> None:
        self.txt.insert("end", msg + "\n")
        self.txt.see("end")

    def _log_t(self, msg: str) -> None:
        self.after(0, self._log, msg)

    def _progress_t(self, pct: int, text: str) -> None:
        self.after(0, self.pbar.configure, {"value": pct})
        self.after(0, self.var_status.set, text)

    def _done_t(self, ok: bool, msg: str) -> None:
        def finish() -> None:
            self._set_busy(False)
            self.var_status.set(msg)
            self._log(msg)
            if ok:
                self.var_status.set("Upgrade complete")
            else:
                self.var_status.set("Upgrade failed")

        self.after(0, finish)

    def _auto_detect_pkg(self) -> None:
        pkg = auto_pkg_path()
        if pkg and pkg.is_file():
            self.var_pkg.set(str(pkg))
            self._log(f"Auto-detect package: {pkg}")

    def _check_ble_backend(self) -> None:
        try:
            ensure_bleak_available()
            self._log(f"Python: {sys.executable}")
        except Exception as exc:
            self._log(f"[WARN] BLE backend unavailable: {exc}")
            self._log(f"[WARN] Current Python: {sys.executable}")
            self.after(
                0,
                lambda: messagebox.showwarning(
                    "BLE Dependency",
                    f"BLE support is unavailable in this Python:\n{sys.executable}\n\n{exc}",
                ),
            )

    def _on_browse(self) -> None:
        path = filedialog.askopenfilename(filetypes=[("OTA package", "*.bin"), ("All files", "*.*")])
        if path:
            self.var_pkg.set(path)

    def _on_scan(self) -> None:
        if self._busy:
            return
        self._set_busy(True)
        self.var_status.set("Scanning BLE devices...")
        self._log("Scanning BLE devices...")
        threading.Thread(target=self._scan_worker, daemon=True).start()

    def _scan_worker(self) -> None:
        ok = False
        try:
            timeout = float(self.var_scan_timeout.get())
            devices = asyncio.run(scan_devices_info(timeout))
            self.after(0, self._apply_scan_results, devices)
            ok = True
        except Exception as exc:
            self._log_t(f"[ERROR] Scan failed: {exc}")
        finally:
            self.after(0, self._set_busy, False)
            if ok:
                self.after(0, self.var_status.set, "Scan complete")
            else:
                self.after(0, self.var_status.set, "Scan failed")

    def _apply_scan_results(self, devices: list[tuple[str, str]]) -> None:
        self._devices.clear()
        values: list[str] = []
        for address, name in devices:
            label = f"{name} [{address}]"
            self._devices[label] = address
            values.append(label)

        self.combo_device["values"] = values
        if values:
            self.combo_device.current(0)
            self._log(f"Found {len(values)} BLE device(s).")
        else:
            self._log("No BLE devices found.")

    def _selected_device(self) -> tuple[str, str] | None:
        label = self.combo_device.get().strip()
        if not label:
            return None
        address = self._devices.get(label)
        if not address:
            return None
        return label, address

    def _on_start(self) -> None:
        if self._busy:
            return

        selected = self._selected_device()
        if not selected:
            messagebox.showwarning("Device", "Please scan and select a BLE device.")
            return

        pkg_path = self.var_pkg.get().strip()
        if not pkg_path or not pathlib.Path(pkg_path).is_file():
            messagebox.showwarning("Package", "Please select a valid ota_pkg.bin.")
            return

        try:
            data_cap = int(self.var_data_cap.get())
            if data_cap <= 0:
                raise ValueError()
        except ValueError:
            messagebox.showwarning("Options", "Data Cap must be a positive integer.")
            return

        self.txt.delete("1.0", "end")
        self.pbar.configure(value=0)
        self._set_busy(True)
        self.var_status.set("Preparing OTA...")
        self._log(f"Selected device: {selected[0]}")
        self._log(f"Selected package: {pkg_path}")
        threading.Thread(target=self._upgrade_worker, args=(selected[1], pkg_path, data_cap), daemon=True).start()

    def _upgrade_worker(self, address: str, pkg_path: str, data_cap: int) -> None:
        try:
            ftab, image = parse_ota_pkg(pkg_path)
            self._log_t(f"Package parsed: ftab={len(ftab)}B image={len(image)}B")

            async def run_upgrade() -> None:
                client = BleOtaClient(
                    device_id=address,
                    ftab=ftab,
                    image=image,
                    data_cap=data_cap,
                    log_fn=self._log_t,
                    progress_fn=self._progress_t,
                )
                await client.run()

            asyncio.run(run_upgrade())
            self._done_t(True, "Upgrade complete")
        except Exception as exc:
            self._done_t(False, f"Upgrade failed: {exc}")


if __name__ == "__main__":
    BleOtaGui().mainloop()
