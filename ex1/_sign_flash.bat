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

echo ---- SIGN ----
if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"
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

echo [2b] Strip 296-byte header from image_sec.bin ...
"%PY_EXE%" -c "d=open(r'%OUT_DIR%\image_sec.bin','rb').read(); open(r'%OUT_DIR%\image_sec.bin','wb').write(d[296:])"
if !ERRORLEVEL! NEQ 0 (
    echo [FAIL] header strip failed
    exit /b 1
)
echo [OK] Sign done

echo ---- FLASH ----
"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor --before no_reset --after soft_reset --connect-attempts 10 write_flash --verify "%BUILD_DIR%\bootloader\bootloader.bin@0x12010000" "%OUT_DIR%\image_sec.bin@0x12020000" "%OUT_DIR%\ftab_sec.bin@0x12000000" 2>&1
if !ERRORLEVEL! NEQ 0 (
    echo [FAIL] Flash failed
    exit /b 1
)
echo [OK] Flash done
endlocal
