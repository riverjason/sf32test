@echo off
setlocal

set ROOT_DIR=E:\study\sf32\ex1
set BUILD_DIR=%ROOT_DIR%\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu
set SEC_TOOL_DIR=E:\study\sf32\SiFli-SDK\tools\secureboot
set KEY_DIR=%ROOT_DIR%\secboot\keys
set OUT_DIR=%ROOT_DIR%\secboot\out
set PYTHON_VENV=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts
set PY_EXE=%PYTHON_VENV%\python.exe

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

echo [1/2] Generate encrypted and signed image_sec.bin ...
"%PY_EXE%" "%SEC_TOOL_DIR%\imgtoolv37.py" enc --key="%KEY_DIR%\s01" --img="%BUILD_DIR%\main.bin" --eimg="%OUT_DIR%\image_sec.bin" --bksize=512 --sigkey="%KEY_DIR%\sig" --flags=3
if errorlevel 1 (
    echo [FAIL] Generate image_sec.bin failed.
    exit /b 1
)

echo [2/2] Inject signature public key into ftab ...
copy /y "%BUILD_DIR%\ftab\ftab.bin" "%OUT_DIR%\ftab.bin" >nul
pushd "%OUT_DIR%"
"%PY_EXE%" "%SEC_TOOL_DIR%\imgtool.py" sig_ftab --sigkey="%KEY_DIR%\sig" --table=ftab.bin
if errorlevel 1 (
    popd
    echo [FAIL] Generate ftab_sec.bin failed.
    exit /b 1
)
copy /y "sec_enc_ftab.bin" "ftab_sec.bin" >nul
popd

echo.
echo [OK] Generated:
echo   %OUT_DIR%\image_sec.bin
echo   %OUT_DIR%\ftab_sec.bin
echo.
endlocal
