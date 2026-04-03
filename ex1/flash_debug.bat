@echo off
call "%~dp0set_paths.bat"
cd /d "%EX1_ROOT%\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu"

set RUST_LOG=debug

echo ===== Testing sftool with RUST_LOG=debug =====
echo.

echo --- Attempt: default_reset, baud 1000000, single file ---
"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor -b 1000000 --connect-attempts 5 write_flash ftab\ftab.bin@0x12000000 2>&1

echo.
echo Exit code: %ERRORLEVEL%
echo.
