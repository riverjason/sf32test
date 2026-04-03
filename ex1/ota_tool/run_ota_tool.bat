@echo off
setlocal
call "%~dp0..\set_paths.bat"
set "PY=%PYTHON_VENV%\python.exe"

if not exist "%PY%" (
    echo Python not found: %PY%
    echo Trying system python...
    set "PY=python"
)

"%PY%" -c "import serial" 2>nul
if errorlevel 1 (
    echo Installing pyserial...
    "%PY%" -m pip install pyserial
)

"%PY%" "%~dp0ota_tool.py"
endlocal
