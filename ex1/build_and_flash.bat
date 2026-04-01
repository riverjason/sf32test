@echo off
setlocal enabledelayedexpansion

set SIFLI_SDK=D:/dev/sf32/sf32test/SiFli-SDK/
set RTT_CC=gcc
set RTT_EXEC_PATH=C:\Users\EDY\.sifli\tools\arm-none-eabi-gcc\14.2.1\bin
set PYTHON_VENV=C:\Users\EDY\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts
set PATH=%PYTHON_VENV%;%RTT_EXEC_PATH%;%SIFLI_SDK%tools\menuconfig\dist;%SIFLI_SDK%tools\scripts;%PATH%
set PYTHONPATH=%PYTHON_VENV%;%SIFLI_SDK%tools\build;%SIFLI_SDK%tools\build\default

set SFTOOL=C:\Users\EDY\.sifli\tools\sftool\0.1.16\sftool.exe
set BOARD=sf32lb52-lcd_n16r8_test
set BUILD_DIR=D:\dev\sf32\sf32test\ex1\rtt\project\build_%BOARD%_hcpu
if not defined COM_PORT set COM_PORT=COM6

echo ========================================================
echo   SF32LB52 Build ^& Flash
echo   Board : %BOARD%
echo   Port  : %COM_PORT%
echo ========================================================
echo.

:: ==================== BUILD ====================
echo [%time%] ---- Step 1/2: Compiling ----
cd /d D:\dev\sf32\sf32test\ex1\rtt\project

%PYTHON_VENV%\scons.exe --board=%BOARD% -j12 2>&1
set BUILD_EXIT=!ERRORLEVEL!

if !BUILD_EXIT! NEQ 0 (
    echo.
    echo [%time%] [FAIL] Build failed with exit code !BUILD_EXIT!
    goto :end
)
echo.
echo [%time%] [OK] Build succeeded.
echo.

:: ==================== FLASH ====================
echo [%time%] ---- Step 2/2: Flashing via %COM_PORT% ----
cd /d %BUILD_DIR%

%SFTOOL% -p %COM_PORT% -c SF32LB52 -m nor --after soft_reset write_flash --verify bootloader\bootloader.bin@0x12010000 main.bin@0x12020000 ftab\ftab.bin@0x12000000

set FLASH_EXIT=!ERRORLEVEL!

if !FLASH_EXIT! NEQ 0 (
    echo.
    echo [%time%] [FAIL] Flash failed with exit code !FLASH_EXIT!
    goto :end
)

echo.
echo ========================================================
echo   [%time%] All done! Build ^& Flash succeeded.
echo ========================================================

:end
if defined BUILD_EXIT if !BUILD_EXIT! NEQ 0 exit /b !BUILD_EXIT!
if defined FLASH_EXIT if !FLASH_EXIT! NEQ 0 exit /b !FLASH_EXIT!
endlocal
