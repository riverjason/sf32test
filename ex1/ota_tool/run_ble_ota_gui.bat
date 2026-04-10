@echo off
setlocal
call "%~dp0..\set_paths.bat"
set "PY=%PYTHON_VENV%\python.exe"

if not exist "%PY%" (
    echo Python not found: %PY%
    echo Trying system python...
    set "PY=python"
)

"%PY%" -c "import bleak" 2>nul
if errorlevel 1 (
    echo Installing bleak...
    "%PY%" -m pip install bleak
    if errorlevel 1 (
        echo [FAIL] Failed to install bleak for %PY%
        pause
        exit /b 1
    )
)

"%PY%" "%~dp0ble_ota_gui.py"
endlocal
