@echo off
call "%~dp0set_paths.bat"
cd /d "%EX1_ROOT%\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu"

echo ===== Test 1: Try %COM_PORT% with no_reset (needs manual download mode) =====
echo %time%
"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor --before no_reset --connect-attempts 3 write_flash bootloader\bootloader.bin@0x12010000
echo sftool exit: %ERRORLEVEL%
echo %time%

echo.
echo ===== Test 2: Try COM1 with default_reset =====
echo %time%
"%SFTOOL%" -p COM1 -c SF32LB52 -m nor --connect-attempts 3 write_flash bootloader\bootloader.bin@0x12010000
echo sftool exit: %ERRORLEVEL%
echo %time%
