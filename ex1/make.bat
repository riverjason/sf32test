@echo off
setlocal enabledelayedexpansion

:: ================================================================
::  SF32LB52 Secure Build Pipeline
::  Usage:
::    make              - run all steps: build + sign + flash
::    make build        - compile bootloader + app + ftab
::    make sign         - generate secure images + OTA packages
::    make flash        - flash secure images to device
::    make build sign   - build then sign (no flash)
::    make sign flash   - sign then flash (no build)
::    make plain        - generate unsigned OTA package (for testing)
::    make clean        - delete build outputs
::    make help         - show this help
::
::  Environment overrides (set before calling):
::    COM_PORT=COM9     - serial port  (default: COM6)
::    BOARD=xxx         - board name   (default: sf32lb52-lcd_n16r8_test)
:: ================================================================

call "%~dp0set_paths.bat"

set RTT_CC=gcc
set PATH=%PYTHON_VENV%;%RTT_EXEC_PATH%;%SIFLI_SDK%tools\menuconfig\dist;%SIFLI_SDK%tools\scripts;%PATH%
set PYTHONPATH=%PYTHON_VENV%;%SIFLI_SDK%tools\build;%SIFLI_SDK%tools\build\default

set "BOARD=%BOARD_DEFAULT%"
set "BUILD_DIR=%EX1_ROOT%\rtt\project\build_%BOARD%_hcpu"
set "KEY_DIR=%EX1_ROOT%\secboot\keys"
set "OUT_DIR=%EX1_ROOT%\secboot\out"
set "PY_EXE=%PYTHON_VENV%\python.exe"

set DO_BUILD=0
set DO_SIGN=0
set DO_FLASH=0
set DO_PLAIN=0
set DO_CLEAN=0
set DO_HELP=0
if "%~1"=="" (
    set DO_BUILD=1
    set DO_SIGN=1
    set DO_FLASH=1
    goto :parsed
)

:parse_args
if "%~1"=="" goto :parsed
if /i "%~1"=="build"  ( set DO_BUILD=1 & shift & goto :parse_args )
if /i "%~1"=="sign"   ( set DO_SIGN=1  & shift & goto :parse_args )
if /i "%~1"=="flash"  ( set DO_FLASH=1 & shift & goto :parse_args )
if /i "%~1"=="plain"  ( set DO_PLAIN=1 & shift & goto :parse_args )
if /i "%~1"=="clean"  ( set DO_CLEAN=1 & shift & goto :parse_args )
if /i "%~1"=="help"   ( set DO_HELP=1  & shift & goto :parse_args )
if /i "%~1"=="-h"     ( set DO_HELP=1  & shift & goto :parse_args )
if /i "%~1"=="/?"     ( set DO_HELP=1  & shift & goto :parse_args )
if /i "%~1"=="all"    ( set DO_BUILD=1 & set DO_SIGN=1 & set DO_FLASH=1 & shift & goto :parse_args )
echo [WARN] Unknown argument: %~1
shift
goto :parse_args

:parsed

if %DO_HELP%==1 goto :show_help
if %DO_CLEAN%==1 goto :do_clean
set T0=%time%
if %DO_BUILD%==1 goto :do_build

:after_build
if %DO_SIGN%==1 goto :do_sign

:after_sign
if %DO_PLAIN%==1 goto :do_plain

:after_plain
if %DO_FLASH%==1 goto :do_flash

:after_flash
goto :done

:: ================================================================
::  HELP
:: ================================================================
:show_help
echo.
echo  SF32LB52 Secure Build Pipeline
echo  ================================
echo.
echo  Usage:  make [steps...]
echo.
echo  Steps:
echo    build   Compile bootloader + app + ftab via SCons
echo    sign    Encrypt, sign, and package secure images
echo    flash   Flash secure bootloader + image + ftab to device
echo    plain   Generate unsigned OTA package for rejection testing
echo    clean   Delete build directory
echo    all     Same as: build sign flash
echo    help    Show this help
echo.
echo  Combinations:
echo    make                = build + sign + flash  [default]
echo    make build sign     = compile then generate secure images
echo    make sign flash     = generate then flash, skip build
echo.
echo  Environment:
echo    COM_PORT  Serial port        [current: %COM_PORT%]
echo    BOARD     Board name         [current: %BOARD%]
echo.
echo  Output files after 'sign':
echo    secboot\out\image_sec.bin     Encrypted image, no header
echo    secboot\out\ftab_sec.bin      Secure ftab: AES key + RSA pubkey + sig
echo    secboot\out\ota_pkg.bin       Single OTA upgrade package
echo    secboot\out\ota_pkg_plain.bin Unsigned OTA, 'plain' step
echo.
exit /b 0

:: ================================================================
::  CLEAN (note: UID is no longer used in the encryption pipeline)
:: ================================================================
:do_clean
echo.
echo ============================================================
echo   Clean
echo ============================================================
if exist "%BUILD_DIR%" (
    echo Deleting %BUILD_DIR% ...
    rmdir /s /q "%BUILD_DIR%"
    echo [OK] Clean done.
) else (
    echo Nothing to clean.
)
if %DO_BUILD%==0 if %DO_SIGN%==0 if %DO_FLASH%==0 exit /b 0
set T0=%time%
if %DO_BUILD%==1 goto :do_build
goto :after_build

:: ================================================================
::  STEP 1: BUILD
:: ================================================================
:do_build
echo.
echo ============================================================
echo   [1] BUILD  -  Compile bootloader + app + ftab
echo   Board : %BOARD%
echo ============================================================
echo.

cd /d "%EX1_ROOT%\rtt\project"

"%PYTHON_VENV%\scons.exe" --board=%BOARD% -j12 2>&1
set BUILD_EXIT=!ERRORLEVEL!

if !BUILD_EXIT! NEQ 0 (
    echo.
    echo [FAIL] Build failed with exit code !BUILD_EXIT!
    exit /b !BUILD_EXIT!
)
echo.

if not exist "%BUILD_DIR%\bootloader\bootloader.bin" (
    echo [WARN] bootloader.bin not found!
) else (
    echo [OK] bootloader.bin ready.
)
if not exist "%BUILD_DIR%\main.bin" (
    echo [FAIL] main.bin not found!
    exit /b 1
)
echo [OK] main.bin ready.
if not exist "%BUILD_DIR%\ftab\ftab.bin" (
    echo [FAIL] ftab.bin not found!
    exit /b 1
)
echo [OK] ftab.bin ready.
echo [OK] Build step completed.
goto :after_build

:: ================================================================
::  STEP 2: SIGN
:: ================================================================
:do_sign
echo.
echo ============================================================
echo   [2] SIGN  -  Encrypt, sign, and package secure images
echo ============================================================

if not exist "%BUILD_DIR%\main.bin" (
    echo [FAIL] main.bin not found. Run 'make build' first.
    exit /b 1
)
if not exist "%BUILD_DIR%\ftab\ftab.bin" (
    echo [FAIL] ftab.bin not found. Run 'make build' first.
    exit /b 1
)
if not exist "%KEY_DIR%\s01.bin" (
    echo [FAIL] AES key not found: %KEY_DIR%\s01.bin
    exit /b 1
)
if not exist "%KEY_DIR%\sig_pri.pem" (
    echo [FAIL] RSA private key not found: %KEY_DIR%\sig_pri.pem
    exit /b 1
)
if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"

echo.
echo [2a] enc_static: encrypt image + inject keys into ftab ...
copy /y "%BUILD_DIR%\ftab\ftab.bin" "%OUT_DIR%\ftab.bin" >nul
pushd "%OUT_DIR%"
"%PY_EXE%" "%SEC_TOOL_DIR%\imgtool.py" enc_static ^
    --key="%KEY_DIR%\s01" ^
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

echo [2b] Strip 296-byte header from image_sec.bin ...
"%PY_EXE%" -c "d=open(r'%OUT_DIR%\image_sec.bin','rb').read(); open(r'%OUT_DIR%\image_sec.bin','wb').write(d[296:])"
if errorlevel 1 (
    echo [FAIL] header strip failed.
    exit /b 1
)

echo [2c] Pack ota_pkg.bin ...
"%PY_EXE%" -c "import struct,pathlib; f=pathlib.Path(r'%OUT_DIR%\ftab_sec.bin').read_bytes(); i=pathlib.Path(r'%OUT_DIR%\image_sec.bin').read_bytes(); pathlib.Path(r'%OUT_DIR%\ota_pkg.bin').write_bytes(struct.pack('<4sIII',b'SFOT',1,len(f),len(i))+f+i); print(f'  ftab_sec : {len(f):>10,} bytes'); print(f'  image_sec: {len(i):>10,} bytes'); print(f'  ota_pkg  : {len(f)+len(i)+16:>10,} bytes')"
if errorlevel 1 (
    echo [FAIL] OTA package failed.
    exit /b 1
)

echo.
echo [OK] Sign step completed. Output:
echo   image_sec.bin  - encrypted image
echo   ftab_sec.bin   - secure ftab with keys + signature
echo   ota_pkg.bin    - single OTA upgrade package
goto :after_sign

:: ================================================================
::  STEP P: PLAIN unsigned OTA
:: ================================================================
:do_plain
echo.
echo ============================================================
echo   [P] PLAIN  -  Generate unsigned OTA package, test only
echo ============================================================

if not exist "%BUILD_DIR%\main.bin" (
    echo [FAIL] main.bin not found. Run 'make build' first.
    exit /b 1
)
if not exist "%BUILD_DIR%\ftab\ftab.bin" (
    echo [FAIL] ftab.bin not found. Run 'make build' first.
    exit /b 1
)
if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"

"%PY_EXE%" -c "import struct,pathlib; f=pathlib.Path(r'%BUILD_DIR%\ftab\ftab.bin').read_bytes(); i=pathlib.Path(r'%BUILD_DIR%\main.bin').read_bytes(); pathlib.Path(r'%OUT_DIR%\ota_pkg_plain.bin').write_bytes(struct.pack('<4sIII',b'SFOT',1,len(f),len(i))+f+i); print(f'  ftab_plain : {len(f):>10,} bytes'); print(f'  image_plain: {len(i):>10,} bytes'); print(f'  total      : {len(f)+len(i)+16:>10,} bytes')"
if errorlevel 1 (
    echo [FAIL] Plain package failed.
    exit /b 1
)
echo.
echo [OK] ota_pkg_plain.bin generated - NO signature, NO encryption.
goto :after_plain

:: ================================================================
::  STEP 3: FLASH
:: ================================================================
:do_flash
echo.
echo ============================================================
echo   [3] FLASH  -  Burn secure images via %COM_PORT%
echo ============================================================

if not exist "%SFTOOL%" (
    echo [FAIL] sftool.exe not found: %SFTOOL%
    exit /b 1
)
if not exist "%BUILD_DIR%\bootloader\bootloader.bin" (
    echo [FAIL] bootloader.bin not found.
    exit /b 1
)
if not exist "%OUT_DIR%\image_sec.bin" (
    echo [FAIL] image_sec.bin not found. Run 'make sign' first.
    exit /b 1
)
if not exist "%OUT_DIR%\ftab_sec.bin" (
    echo [FAIL] ftab_sec.bin not found. Run 'make sign' first.
    exit /b 1
)

echo.
echo   bootloader.bin @ 0x12010000
echo   image_sec.bin  @ 0x12020000
echo   ftab_sec.bin   @ 0x12000000
echo.

"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor --before no_reset --after soft_reset --connect-attempts 10 write_flash --verify "%BUILD_DIR%\bootloader\bootloader.bin@0x12010000" "%OUT_DIR%\image_sec.bin@0x12020000" "%OUT_DIR%\ftab_sec.bin@0x12000000"
set FLASH_EXIT=!ERRORLEVEL!

echo.
if !FLASH_EXIT! EQU 0 (
    echo [OK] Flash step completed.
) else (
    echo [FAIL] Flash failed with exit code !FLASH_EXIT!
    echo        Make sure board is in download mode:
    echo          1. Hold Key1  2. Press Reset  3. Release Key1
    exit /b !FLASH_EXIT!
)
goto :after_flash

:: ================================================================
::  DONE
:: ================================================================
:done
echo.
echo ============================================================
set "STEPS="
if %DO_BUILD%==1 set "STEPS=!STEPS! build"
if %DO_SIGN%==1  set "STEPS=!STEPS! sign"
if %DO_PLAIN%==1 set "STEPS=!STEPS! plain"
if %DO_FLASH%==1 set "STEPS=!STEPS! flash"
if %DO_CLEAN%==1 set "STEPS=!STEPS! clean"
echo   ALL DONE [!STEPS! ]
echo   Started : %T0%
echo   Finished: %time%
echo ============================================================
endlocal
