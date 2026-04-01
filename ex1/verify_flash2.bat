@echo off
cd /d E:\study\sf32\ex1\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu

set SFTOOL=C:\Users\jason\.sifli\tools\sftool\0.1.16\sftool.exe
set PYTHON=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts\python.exe

echo === Reading 256 bytes from flash at 0x12020000 ===
%SFTOOL% -p COM8 -c SF32LB52 -m nor --after soft_reset read_flash flash_readback.bin@0x12020000:256 2>&1
echo sftool exit: %ERRORLEVEL%

if exist flash_readback.bin (
    echo === Comparing with main.bin ===
    %PYTHON% -c "a=open('main.bin','rb').read(256);b=open('flash_readback.bin','rb').read(256);print(f'main.bin[0:8] = {a[:8].hex()}');print(f'flash[0:8]    = {b[:8].hex()}');print(f'Size readback: {len(b)}');print(f'Match: {a==b}')"
) else (
    echo flash_readback.bin not found!
)
