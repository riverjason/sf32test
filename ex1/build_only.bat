@echo off
setlocal enabledelayedexpansion

call "%~dp0set_paths.bat"
set RTT_CC=gcc
set PATH=%PYTHON_VENV%;%RTT_EXEC_PATH%;%SIFLI_SDK%tools\menuconfig\dist;%SIFLI_SDK%tools\scripts;%PATH%
set PYTHONPATH=%PYTHON_VENV%;%SIFLI_SDK%tools\build;%SIFLI_SDK%tools\build\default

set BOARD=%BOARD_DEFAULT%
set "BUILD_DIR=%EX1_ROOT%\rtt\project\build_%BOARD%_hcpu"

echo ========================================================
echo   SF32LB52 Build Only
echo   Board : %BOARD%
echo ========================================================
echo.

cd /d "%EX1_ROOT%\rtt\project"

"%PYTHON_VENV%\scons.exe" --board=%BOARD% -j12 2>&1
set BUILD_EXIT=!ERRORLEVEL!

if !BUILD_EXIT! NEQ 0 (
    echo.
    echo [FAIL] Build failed with exit code !BUILD_EXIT!
    exit /b !BUILD_EXIT!
)
echo.
echo [OK] Build succeeded.

if exist "%BUILD_DIR%\bootloader\bootloader.bin" (
    echo [OK] bootloader.bin generated.
) else (
    echo [WARN] bootloader.bin not found!
)
endlocal
