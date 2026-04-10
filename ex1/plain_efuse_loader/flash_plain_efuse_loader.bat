@echo off
setlocal enabledelayedexpansion

call "%~dp0..\set_paths.bat"

if not "%~1"=="" set "COM_PORT=%~1"
if not defined COM_PORT set "COM_PORT=COM6"
if not defined FLASH_RETRIES set "FLASH_RETRIES=3"

set "COMPAT_ARGS="
echo %COM_PORT% | findstr /R /I "^COM[0-9][0-9]*$" >nul
if not errorlevel 1 set "COMPAT_ARGS=--compat true"

set "BOOT_ARG=%~dp0bootloader.bin@0x12010000"
set "MAIN_ARG=%~dp0main.bin@0x12020000"
set "FTAB_ARG=%~dp0ftab.bin@0x12000000"

echo ============================================
echo   Flash PLAIN eFuse loader
echo   Port: %COM_PORT%
echo   Retries: %FLASH_RETRIES%
if defined COMPAT_ARGS echo   Compat: true
echo ============================================
echo.
echo   bootloader.bin @ 0x12010000
echo   main.bin       @ 0x12020000
echo   ftab.bin       @ 0x12000000
echo.

set "FLASH_EXIT=1"
for /L %%I in (1,1,%FLASH_RETRIES%) do (
    echo --------------------------------------------
    echo Attempt %%I/%FLASH_RETRIES%: make.ps1 style flash
    echo --------------------------------------------
    "%SFTOOL%" -p %COM_PORT% %COMPAT_ARGS% -c SF32LB52 -m nor write_flash "%BOOT_ARG%" "%MAIN_ARG%" "%FTAB_ARG%"
    set "FLASH_EXIT=!ERRORLEVEL!"
    if !FLASH_EXIT! EQU 0 goto :flash_ok
    echo [WARN] Attempt %%I failed with exit code !FLASH_EXIT!
    if %%I LSS %FLASH_RETRIES% (
        echo [INFO] If board is not in download mode: hold Key1, tap Reset, then release Key1.
        timeout /t 2 /nobreak >nul
    )
)

echo.
echo --------------------------------------------
echo Fallback: legacy verified flash
echo --------------------------------------------
"%SFTOOL%" -p %COM_PORT% %COMPAT_ARGS% -c SF32LB52 -m nor --before no_reset --after soft_reset --connect-attempts 10 write_flash --verify "%BOOT_ARG%" "%MAIN_ARG%" "%FTAB_ARG%"
set "FLASH_EXIT=%ERRORLEVEL%"
if %FLASH_EXIT% EQU 0 goto :flash_ok

echo.
echo [FAIL] Flash failed with exit code %FLASH_EXIT%
echo [HINT] This board may require download mode before each retry:
echo        1. Hold Key1  2. Press Reset  3. Release Key1
exit /b %FLASH_EXIT%

:flash_ok
echo.
echo [OK] Plain eFuse loader flashed successfully.
echo      Reset board and open serial console to use: efuse info / efuse write ...
exit /b 0
