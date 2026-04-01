@echo off
set PYTHON=C:\Users\jason\.sifli\python_env\Scripts\python.exe
%PYTHON% -c "import serial; print('pyserial version:', serial.__version__)"
if %ERRORLEVEL% NEQ 0 (
    echo Installing pyserial...
    %PYTHON% -m pip install pyserial
)
%PYTHON% E:\study\sf32\ex1\serial_monitor.py COM8 1000000
