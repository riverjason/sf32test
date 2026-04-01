@echo off
setlocal

set ROOT_DIR=e:\study\sf32\ex1
set BUILD_DIR=%ROOT_DIR%\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu
set SEC_TOOL_DIR=e:\study\sf32\SiFli-SDK\tools\secureboot
set KEY_DIR=%ROOT_DIR%\secboot\keys
set OUT_DIR=%ROOT_DIR%\secboot\out
set PY_EXE=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts\python.exe

echo ============================================
echo   Generate Secure Image + Secure FTAB
echo ============================================
echo BUILD_DIR : %BUILD_DIR%
echo KEY_DIR   : %KEY_DIR%
echo OUT_DIR   : %OUT_DIR%
echo.

if not exist "%BUILD_DIR%\main.bin" (
    echo [FAIL] main.bin not found, run build first.
    exit /b 1
)
if not exist "%BUILD_DIR%\ftab\ftab.bin" (
    echo [FAIL] ftab.bin not found, run build first.
    exit /b 1
)
if not exist "%KEY_DIR%\s01.bin" (
    echo [FAIL] key file not found: %KEY_DIR%\s01.bin
    exit /b 1
)
if not exist "%KEY_DIR%\sig_pri.pem" (
    echo [FAIL] sig key not found: %KEY_DIR%\sig_pri.pem
    exit /b 1
)
if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"
if not exist "%PY_EXE%" (
    echo [FAIL] Python venv not found: %PY_EXE%
    exit /b 1
)

echo [1/2] Encrypt + sign image and inject keys into ftab (enc_static) ...
copy /y "%BUILD_DIR%\ftab\ftab.bin" "%OUT_DIR%\ftab.bin" >nul
pushd "%OUT_DIR%"
"%PY_EXE%" "%SEC_TOOL_DIR%\imgtool.py" enc_static ^
    --key="%KEY_DIR%\s01" ^
    --uid="%KEY_DIR%\uid" ^
    --img="%BUILD_DIR%\main.bin" ^
    --eimg="%OUT_DIR%\image_sec.bin" ^
    --bksize=512 ^
    --sigkey="%KEY_DIR%\sig" ^
    --flags=3 ^
    --table=ftab.bin
if errorlevel 1 (
    popd
    echo [FAIL] enc_static failed.
    exit /b 1
)
copy /y "enc_ftab.bin" "ftab_sec.bin" >nul
popd

echo [2/2] Strip 296-byte header from image_sec.bin (header is in ftab) ...
"%PY_EXE%" -c "d=open(r'%OUT_DIR%\image_sec.bin','rb').read(); open(r'%OUT_DIR%\image_sec.bin','wb').write(d[296:])"
if errorlevel 1 (
    echo [FAIL] header strip failed.
    exit /b 1
)

echo.
echo [OK] Generated:
echo   %OUT_DIR%\image_sec.bin (encrypted data only, no header)
echo   %OUT_DIR%\ftab_sec.bin  (contains keys + image header + signature)
echo.
endlocal
