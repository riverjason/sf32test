@echo off
call "%~dp0..\set_paths.bat"
set "ROOT_DIR=%EX1_ROOT%"
set "BUILD_DIR=%ROOT_DIR%\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu"
set "SEC_OUT_DIR=%ROOT_DIR%\secboot\out"
if not defined COM_PORT set COM_PORT=COM6

echo ============================================
echo   Flash Secure Boot Images (SF32LB52)
echo   Port: %COM_PORT%
echo ============================================
echo.

if not exist "%SFTOOL%" (
    echo [FAIL] sftool.exe not found: %SFTOOL%
    exit /b 1
)
if not exist "%BUILD_DIR%\bootloader\bootloader.bin" (
    echo [FAIL] bootloader.bin not found: %BUILD_DIR%\bootloader\bootloader.bin
    exit /b 1
)
if not exist "%SEC_OUT_DIR%\image_sec.bin" (
    echo [FAIL] image_sec.bin not found. Run secboot\gen_sec_img.bat first.
    exit /b 1
)
if not exist "%SEC_OUT_DIR%\ftab_sec.bin" (
    echo [FAIL] ftab_sec.bin not found. Run secboot\gen_sec_img.bat first.
    exit /b 1
)

echo Flashing:
echo   bootloader : %BUILD_DIR%\bootloader\bootloader.bin @ 0x12010000
echo   image_sec  : %SEC_OUT_DIR%\image_sec.bin @ 0x12020000
echo   ftab_sec   : %SEC_OUT_DIR%\ftab_sec.bin  @ 0x12000000
echo.

"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor --before no_reset --after soft_reset --connect-attempts 10 write_flash --verify %BUILD_DIR%\bootloader\bootloader.bin@0x12010000 %SEC_OUT_DIR%\image_sec.bin@0x12020000 %SEC_OUT_DIR%\ftab_sec.bin@0x12000000

set FLASH_EXIT=%ERRORLEVEL%
echo.
if %FLASH_EXIT% EQU 0 (
    echo [OK] Secure flash succeeded.
) else (
    echo [FAIL] Flash failed with exit code %FLASH_EXIT%
)
exit /b %FLASH_EXIT%
