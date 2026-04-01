@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul 2>&1

:: One-click: build -> flash -> serial verify (msh + efuse info)
:: Usage:
::   auto_flash_verify.bat
::   set COM_PORT=COM9&& auto_flash_verify.bat
::
set "ROOT=%~dp0"
set "SIFLI_SDK=E:/study/sf32/SiFli-SDK/"
set "PYTHON_VENV=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts"
set "PY=%PYTHON_VENV%\python.exe"

if not defined COM_PORT set "COM_PORT=COM8"

echo ========================================================
echo   Auto: Build + Flash + Serial verify
echo   Port : %COM_PORT%
echo ========================================================
echo.

call "%ROOT%build_and_flash.bat"
if errorlevel 1 (
    echo [%time%] [FAIL] Build or flash failed.
    exit /b 1
)

echo.
echo [%time%] ---- Serial verify (%COM_PORT%) ----
:: sftool may hold the port briefly; Python retries open (~3s delay, ping avoids timeout.exe stdin issues)
ping -n 4 127.0.0.1 >nul

if not exist "%PY%" (
    echo [WARN] Venv python not found: %PY%
    set "PY=python"
)

"%PY%" -c "import serial" 2>nul
if errorlevel 1 (
    echo Installing pyserial into venv...
    "%PYTHON_VENV%\pip.exe" install -q pyserial
    if errorlevel 1 "%PY%" -m pip install -q pyserial
)

"%PY%" "%ROOT%verify_efuse_serial.py" --port %COM_PORT% --boot-wait 5 --open-retries 8 --open-retry-delay 2
set "V=!ERRORLEVEL!"
if !V! NEQ 0 (
    echo [%time%] [FAIL] Serial verify exit !V!
    exit /b !V!
)

echo.
echo [%time%] [OK] Auto flash verify completed.
exit /b 0
