@echo off
cd /d E:\study\sf32\ex1\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu

echo [%time%] Starting flash...
echo.

C:\Users\jason\.sifli\tools\sftool\0.1.16\sftool.exe -p COM8 -c SF32LB52 -m nor --after soft_reset write_flash bootloader\bootloader.bin@0x12010000 main.bin@0x12020000 ftab\ftab.bin@0x12000000

echo.
echo [%time%] sftool exit code: %ERRORLEVEL%
