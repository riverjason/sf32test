@echo off
call "%~dp0set_paths.bat"
set "PYTHON=%PYTHON_VENV%\python.exe"
set "MINITERM=%PYTHON_VENV%\pyserial-ports.exe"

echo === Available COM ports ===
"%MINITERM%"
echo.

echo === Reading serial output from %COM_PORT% for 10 seconds ===
"%PYTHON%" "%EX1_ROOT%\serial_monitor.py" %COM_PORT% 1000000
