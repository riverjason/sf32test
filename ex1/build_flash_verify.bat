@echo off
setlocal
if not defined COM_PORT set COM_PORT=COM8

call "%~dp0build_and_flash.bat"
if errorlevel 1 exit /b 1

echo.
echo [%time%] ---- Step 3/3: Serial eFuse check (%COM_PORT%) ----
ping -n 3 127.0.0.1 >nul

set "PYTHON_VENV=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts"
set "PY=%PYTHON_VENV%\python.exe"
if not exist "%PY%" set "PY=python"

"%PY%" -c "import serial" 2>nul
if errorlevel 1 "%PY%" -m pip install -q pyserial 2>nul

"%PY%" "%~dp0verify_efuse_serial.py" --port %COM_PORT% --boot-wait 5 --open-retries 8 --open-retry-delay 2
set V=%ERRORLEVEL%
if %V% NEQ 0 (
    echo [%time%] [FAIL] Serial verify exit %V%
    exit /b %V%
)
echo [%time%] [OK] Serial verify done.
exit /b 0
