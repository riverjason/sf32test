@echo off
setlocal

set ROOT_DIR=E:\study\sf32\ex1
set BUILD_DIR=%ROOT_DIR%\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu
set SEC_OUT_DIR=%ROOT_DIR%\secboot\out
set SFTOOL=C:\Users\jason\.sifli\tools\sftool\0.1.16\sftool.exe
set COM_PORT=COM8

echo ============================================
echo   Flash Secure Boot Images (SF32LB52)
echo   Port: %COM_PORT%
echo ============================================
echo.

if not exist "%BUILD_DIR%\bootloader\bootloader.bin" (
    echo [FAIL] bootloader.bin not found.
    exit /b 1
)
if not exist "%SEC_OUT_DIR%\image_sec.bin" (
    echo [FAIL] image_sec.bin not found, run secboot\gen_sec_img.bat first.
    exit /b 1
)
if not exist "%SEC_OUT_DIR%\ftab_sec.bin" (
    echo [FAIL] ftab_sec.bin not found, run secboot\gen_sec_img.bat first.
    exit /b 1
)

cd /d "%ROOT_DIR%"
echo Make sure board is in download mode:
echo   1. Hold Key1 (PA34)
echo   2. Press Reset
echo   3. Release Key1
echo.

%SFTOOL% -p %COM_PORT% -c SF32LB52 -m nor --before no_reset --after soft_reset --connect-attempts 10 write_flash --verify ^
"%BUILD_DIR%\bootloader\bootloader.bin@0x12010000" ^
"%SEC_OUT_DIR%\image_sec.bin@0x12020000" ^
"%SEC_OUT_DIR%\ftab_sec.bin@0x12000000"

echo.
echo Flash finished with exit code: %ERRORLEVEL%
endlocal
