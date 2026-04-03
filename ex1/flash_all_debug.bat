@echo off
call "%~dp0set_paths.bat"
cd /d "%EX1_ROOT%\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu"

set RUST_LOG=info

echo ============================================
echo   UART Flash Download (SF32LB52) on %COM_PORT%
echo   Flashing: bootloader + main + ftab
echo ============================================
echo.

"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor --connect-attempts 5 --after soft_reset write_flash --verify bootloader\bootloader.bin@0x12010000 main.bin@0x12020000 ftab\ftab.bin@0x12000000 2>&1

echo.
echo Exit code: %ERRORLEVEL%
