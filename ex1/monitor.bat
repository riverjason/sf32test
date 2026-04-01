@echo off
set PYTHON=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts\python.exe
set MINITERM=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts\pyserial-ports.exe

echo === Available COM ports ===
%MINITERM%
echo.

echo === Reading serial output from COM8 for 10 seconds ===
%PYTHON% E:\study\sf32\ex1\serial_monitor.py COM8 1000000
