@echo off
call "%~dp0set_paths.bat"
set "PYTHON=%PYTHON_VENV%\python.exe"

echo === Detailed COM port information ===
"%PYTHON%" -c "import serial.tools.list_ports;[print(f'{p.device}: {p.description} [hwid={p.hwid}]') for p in serial.tools.list_ports.comports()]"
