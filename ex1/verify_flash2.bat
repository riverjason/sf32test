@echo off
call "%~dp0set_paths.bat"
cd /d "%EX1_ROOT%\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu"

set "PYTHON=%PYTHON_VENV%\python.exe"

echo === Reading 256 bytes from flash at 0x12020000 ===
"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor --after soft_reset read_flash flash_readback.bin@0x12020000:256 2>&1
echo sftool exit: %ERRORLEVEL%

if exist flash_readback.bin (
    echo === Comparing with main.bin ===
    "%PYTHON%" -c "a=open('main.bin','rb').read(256);b=open('flash_readback.bin','rb').read(256);print(f'main.bin[0:8] = {a[:8].hex()}');print(f'flash[0:8]    = {b[:8].hex()}');print(f'Size readback: {len(b)}');print(f'Match: {a==b}')"
) else (
    echo flash_readback.bin not found!
)
