@echo off
call "%~dp0set_paths.bat"
cd /d "%EX1_ROOT%\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu"

set "PYTHON=%PYTHON_VENV%\python.exe"
set RUST_LOG=debug

echo === Reading 256 bytes from flash at 0x12020000 (main.bin location) ===
"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor read_flash 0x12020000 256 flash_readback.bin 2>&1

echo.
echo sftool exit: %ERRORLEVEL%
echo.

if exist flash_readback.bin (
    echo === Comparing first 256 bytes of main.bin with flash readback ===
    "%PYTHON%" -c "a=open('main.bin','rb').read(256);b=open('flash_readback.bin','rb').read(256);print(f'main.bin first 8 bytes: {a[:8].hex()}');print(f'flash    first 8 bytes: {b[:8].hex()}');print(f'Match: {a==b}')"
) else (
    echo ERROR: flash_readback.bin not created
)
