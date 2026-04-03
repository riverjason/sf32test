@echo off
call "%~dp0..\set_paths.bat"
set "BUILD_DIR=%EX1_ROOT%\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu"

echo ============================================
echo   Flash PLAIN (unsigned) images for test
echo   Port: %COM_PORT%
echo   Bootloader: with signature verification
echo   Image/ftab: PLAIN, NO signature
echo ============================================
echo.

"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor --before no_reset --after soft_reset --connect-attempts 10 write_flash --verify %BUILD_DIR%\bootloader\bootloader.bin@0x12010000 %BUILD_DIR%\main.bin@0x12020000 %BUILD_DIR%\ftab\ftab.bin@0x12000000

set FLASH_EXIT=%ERRORLEVEL%
echo.
if %FLASH_EXIT% EQU 0 (
    echo [OK] Plain flash succeeded. Reset board and check serial - bootloader should REJECT this image.
) else (
    echo [FAIL] Flash failed with exit code %FLASH_EXIT%
)
exit /b %FLASH_EXIT%
