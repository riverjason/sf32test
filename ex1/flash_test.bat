@echo off
cd /d E:\study\sf32\ex1\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu

set SFTOOL=C:\Users\jason\.sifli\tools\sftool\0.1.16\sftool.exe

echo ===== Test 1: Try COM8 with no_reset (needs manual download mode) =====
echo %time%
%SFTOOL% -p COM8 -c SF32LB52 -m nor --before no_reset --connect-attempts 3 write_flash bootloader\bootloader.bin@0x12010000
echo sftool exit: %ERRORLEVEL%
echo %time%

echo.
echo ===== Test 2: Try COM1 with default_reset =====
echo %time%
%SFTOOL% -p COM1 -c SF32LB52 -m nor --connect-attempts 3 write_flash bootloader\bootloader.bin@0x12010000
echo sftool exit: %ERRORLEVEL%
echo %time%
