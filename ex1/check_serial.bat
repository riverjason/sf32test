@echo off
call "%~dp0set_paths.bat"
set "PYTHON=%PYTHON_VENV%\python.exe"
"%PYTHON%" -c "import serial; print('pyserial version:', serial.__version__)"
if %ERRORLEVEL% NEQ 0 (
    echo Installing pyserial...
    "%PYTHON%" -m pip install pyserial
)
"%PYTHON%" "%EX1_ROOT%\serial_monitor.py" %COM_PORT% 1000000
