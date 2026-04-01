@echo off
cd /d E:\study\sf32\ex1\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu

set SFTOOL=C:\Users\jason\.sifli\tools\sftool\0.1.16\sftool.exe
set RUST_LOG=info

echo ============================================
echo   UART Flash Download (SF32LB52) on COM8
echo   Flashing: bootloader + main + ftab
echo ============================================
echo.

%SFTOOL% -p COM8 -c SF32LB52 -m nor --connect-attempts 5 --after soft_reset write_flash --verify bootloader\bootloader.bin@0x12010000 main.bin@0x12020000 ftab\ftab.bin@0x12000000 2>&1

echo.
echo Exit code: %ERRORLEVEL%
