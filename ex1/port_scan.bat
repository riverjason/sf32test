@echo off
set PYTHON=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts\python.exe

echo === Detailed COM port information ===
%PYTHON% -c "import serial.tools.list_ports;[print(f'{p.device}: {p.description} [hwid={p.hwid}]') for p in serial.tools.list_ports.comports()]"
