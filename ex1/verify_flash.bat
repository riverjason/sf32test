@echo off
cd /d E:\study\sf32\ex1\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu

set SFTOOL=C:\Users\jason\.sifli\tools\sftool\0.1.16\sftool.exe
set PYTHON=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts\python.exe
set RUST_LOG=debug

echo === Reading 256 bytes from flash at 0x12020000 (main.bin location) ===
%SFTOOL% -p COM8 -c SF32LB52 -m nor read_flash 0x12020000 256 flash_readback.bin 2>&1

echo.
echo sftool exit: %ERRORLEVEL%
echo.

if exist flash_readback.bin (
    echo === Comparing first 256 bytes of main.bin with flash readback ===
    %PYTHON% -c "a=open('main.bin','rb').read(256);b=open('flash_readback.bin','rb').read(256);print(f'main.bin first 8 bytes: {a[:8].hex()}');print(f'flash    first 8 bytes: {b[:8].hex()}');print(f'Match: {a==b}')"
) else (
    echo ERROR: flash_readback.bin not created
)
