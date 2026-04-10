@echo off
setlocal
call "%~dp0..\set_paths.bat"
set "PY=%PYTHON_VENV%\python.exe"

if not exist "%PY%" (
    echo Python not found: %PY%
    echo Trying system python...
    set "PY=python"
)

echo [1/2] Running BLE OTA mock self-test...
"%PY%" "%~dp0ble_ota_tool.py" --self-test
if errorlevel 1 exit /b 1

echo.
echo [2/2] Running BLE OTA unit tests...
"%PY%" -m unittest "%~dp0test_ble_ota_tool.py"
if errorlevel 1 exit /b 1

echo.
echo BLE OTA host-side tests passed.
endlocal
