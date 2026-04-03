@echo off
setlocal

call "%~dp0..\set_paths.bat"
set "BUILD_DIR=%EX1_ROOT%\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu"
set "OUT_DIR=%EX1_ROOT%\secboot\out"
set "PY_EXE=%PYTHON_VENV%\python.exe"

echo ============================================
echo   Generate PLAIN (unsigned) OTA Package
echo   For security rejection testing ONLY
echo ============================================

if not exist "%BUILD_DIR%\main.bin" (
    echo [FAIL] main.bin not found, run build first.
    exit /b 1
)
if not exist "%BUILD_DIR%\ftab\ftab.bin" (
    echo [FAIL] ftab.bin not found, run build first.
    exit /b 1
)
if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"

echo.
echo Using PLAIN ftab.bin (no AES key, no RSA pubkey, no signature)
echo Using PLAIN main.bin (not encrypted)
echo.

"%PY_EXE%" -c "import struct,pathlib; f=pathlib.Path(r'%BUILD_DIR%\ftab\ftab.bin').read_bytes(); i=pathlib.Path(r'%BUILD_DIR%\main.bin').read_bytes(); pathlib.Path(r'%OUT_DIR%\ota_pkg_plain.bin').write_bytes(struct.pack('<4sIII',b'SFOT',1,len(f),len(i))+f+i); print(f'  ftab: {len(f):,} bytes (plain)'); print(f'  image: {len(i):,} bytes (plain)'); print(f'  total: {len(f)+len(i)+16:,} bytes')"
if errorlevel 1 (
    echo [FAIL] Package creation failed.
    exit /b 1
)

echo.
echo [OK] Generated: %OUT_DIR%\ota_pkg_plain.bin
echo      This package has NO signature and NO encryption.
echo      Bootloader MUST reject it if secure boot is working correctly.
echo.
endlocal
