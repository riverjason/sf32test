@echo off
cd /d E:\study\sf32\ex1\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu

set SFTOOL=C:\Users\jason\.sifli\tools\sftool\0.1.16\sftool.exe
set RUST_LOG=debug

echo ===== Testing sftool with RUST_LOG=debug =====
echo.

echo --- Attempt: default_reset, baud 1000000, single file ---
%SFTOOL% -p COM8 -c SF32LB52 -m nor -b 1000000 --connect-attempts 5 write_flash ftab\ftab.bin@0x12000000 2>&1

echo.
echo Exit code: %ERRORLEVEL%
echo.
