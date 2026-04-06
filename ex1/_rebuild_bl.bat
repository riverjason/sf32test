@echo off
setlocal enabledelayedexpansion
call "%~dp0set_paths.bat"
set RTT_CC=gcc
set PATH=%PYTHON_VENV%;%RTT_EXEC_PATH%;%SIFLI_SDK%tools\menuconfig\dist;%SIFLI_SDK%tools\scripts;%PATH%
set PYTHONPATH=%PYTHON_VENV%;%SIFLI_SDK%tools\build;%SIFLI_SDK%tools\build\default
set BOARD=%BOARD_DEFAULT%
set "BUILD_DIR=%EX1_ROOT%\rtt\project\build_%BOARD%_hcpu"

echo ---- Building ----
cd /d "%EX1_ROOT%\rtt\project"
"%PYTHON_VENV%\scons.exe" --board=%BOARD% -j12 2>&1
if !ERRORLEVEL! NEQ 0 (
    echo [FAIL] Build failed
    exit /b 1
)
echo [OK] Build done
endlocal
