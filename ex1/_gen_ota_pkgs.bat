@echo off
setlocal enabledelayedexpansion
call "%~dp0set_paths.bat"
set RTT_CC=gcc
set PATH=%PYTHON_VENV%;%RTT_EXEC_PATH%;%SIFLI_SDK%tools\menuconfig\dist;%SIFLI_SDK%tools\scripts;%PATH%
set PYTHONPATH=%PYTHON_VENV%;%SIFLI_SDK%tools\build;%SIFLI_SDK%tools\build\default
set BOARD=%BOARD_DEFAULT%
set "BUILD_DIR=%EX1_ROOT%\rtt\project\build_%BOARD%_hcpu"
set "KEY_DIR=%EX1_ROOT%\secboot\keys"
set "OUT_DIR=%EX1_ROOT%\secboot\out"
set "PY_EXE=%PYTHON_VENV%\python.exe"
set "SEC_TOOL_DIR=%SIFLI_SDK%tools\secureboot"

echo ============================================
echo   Generate NORMAL + BAD OTA packages
echo ============================================

if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"

echo.
echo ---- [1/4] SIGN normal image ----
copy /y "%BUILD_DIR%\ftab\ftab.bin" "%OUT_DIR%\ftab.bin" >nul
pushd "%OUT_DIR%"
"%PY_EXE%" "%SEC_TOOL_DIR%\imgtool.py" enc_static --key="%KEY_DIR%\s01" --img="%BUILD_DIR%\main.bin" --eimg="%OUT_DIR%\image_sec.bin" --bksize=512 --sigkey="%KEY_DIR%\sig" --flags=3 --table=ftab.bin 2>&1
if !ERRORLEVEL! NEQ 0 (
    popd
    echo [FAIL] enc_static failed
    exit /b 1
)
copy /y "enc_ftab.bin" "ftab_sec.bin" >nul
popd

echo [2/4] Strip 296-byte header ...
"%PY_EXE%" -c "d=open(r'%OUT_DIR%\image_sec.bin','rb').read(); open(r'%OUT_DIR%\image_sec.bin','wb').write(d[296:])"

echo [3/4] Pack ota_pkg.bin (NORMAL) ...
"%PY_EXE%" -c "import struct,pathlib; f=pathlib.Path(r'%OUT_DIR%\ftab_sec.bin').read_bytes(); i=pathlib.Path(r'%OUT_DIR%\image_sec.bin').read_bytes(); pathlib.Path(r'%OUT_DIR%\ota_pkg.bin').write_bytes(struct.pack('<4sIII',b'SFOT',1,len(f),len(i))+f+i); print(f'  ftab_sec : {len(f):>10,} bytes'); print(f'  image_sec: {len(i):>10,} bytes'); print(f'  ota_pkg  : {len(f)+len(i)+16:>10,} bytes')"

echo [OK] ota_pkg.bin generated (NORMAL - correct signature + encryption)

echo.
echo ---- [4/4] Generate ota_pkg_bad.bin (TAMPERED) ----
"%PY_EXE%" -c "import struct,pathlib; pkg=pathlib.Path(r'%OUT_DIR%\ota_pkg.bin').read_bytes(); ba=bytearray(pkg); off=16+struct.unpack_from('<I',pkg,8)[0]+100; ba[off]^=0xFF; ba[off+1]^=0xFF; ba[off+2]^=0xFF; ba[off+3]^=0xFF; pathlib.Path(r'%OUT_DIR%\ota_pkg_bad.bin').write_bytes(bytes(ba)); print(f'  Tampered 4 bytes at offset {off} (in encrypted image body)'); print(f'  ota_pkg_bad: {len(ba):>10,} bytes')"

echo [OK] ota_pkg_bad.bin generated (TAMPERED - 4 bytes flipped in ciphertext)

echo.
echo ============================================
echo   Output files:
echo     %OUT_DIR%\ota_pkg.bin       NORMAL  (should pass verification)
echo     %OUT_DIR%\ota_pkg_bad.bin   TAMPERED (should FAIL verification)
echo ============================================
endlocal
