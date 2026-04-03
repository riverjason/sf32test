@echo off
setlocal
call "%~dp0..\set_paths.bat"
set "PY=%PYTHON_VENV%\python.exe"
set "OUT=%~dp0efuse_info_chip.txt"

echo Saving MSH output to:
echo   %OUT%
echo (Board on %COM_PORT%, baud 1M)
echo.

"%PY%" "%~dp0..\verify_efuse_serial.py" --port %COM_PORT% --cmd "efuse info" --boot-wait 5 --open-retries 8 > "%OUT%"

if errorlevel 1 (
  echo [FAIL] Could not capture efuse info.
  endlocal & exit /b 1
)
echo.
echo [OK] Wrote %OUT%
echo You can run: secboot\preflight_secure.bat "%OUT%"
endlocal & exit /b 0
