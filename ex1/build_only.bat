@echo off
setlocal enabledelayedexpansion

set SIFLI_SDK=e:/study/sf32/SiFli-SDK/
set RTT_CC=gcc
set RTT_EXEC_PATH=C:\Users\jason\.sifli\tools\arm-none-eabi-gcc\14.2.1\bin
set PYTHON_VENV=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts
set PATH=%PYTHON_VENV%;%RTT_EXEC_PATH%;%SIFLI_SDK%tools\menuconfig\dist;%SIFLI_SDK%tools\scripts;%PATH%
set PYTHONPATH=%PYTHON_VENV%;%SIFLI_SDK%tools\build;%SIFLI_SDK%tools\build\default

set BOARD=sf32lb52-lcd_n16r8_test
set BUILD_DIR=e:\study\sf32\ex1\rtt\project\build_%BOARD%_hcpu

echo ========================================================
echo   SF32LB52 Build Only
echo   Board : %BOARD%
echo ========================================================
echo.

cd /d e:\study\sf32\ex1\rtt\project

%PYTHON_VENV%\scons.exe --board=%BOARD% -j12 2>&1
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
