@echo off
call "%~dp0set_paths.bat"
cd /d "%EX1_ROOT%\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu"

echo ============================================
echo   UART Flash Download (SF32LB52) on %COM_PORT%
echo ============================================

echo.
echo [%time%] Flashing all binaries...
echo   bootloader.bin (57 KB) @ 0x12010000
echo   main.bin       (502 KB) @ 0x12020000
echo   ftab.bin       (11 KB) @ 0x12000000
echo.

"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor --before no_reset --after soft_reset --connect-attempts 10 write_flash --verify bootloader\bootloader.bin@0x12010000 main.bin@0x12020000 ftab\ftab.bin@0x12000000

echo.
echo [%time%] sftool exit code: %ERRORLEVEL%

if %ERRORLEVEL% EQU 0 (
    echo [OK] Flash completed successfully!
) else (
    echo [FAIL] Flash failed! Make sure board is in download mode.
)
