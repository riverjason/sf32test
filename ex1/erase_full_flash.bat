@echo off
setlocal

rem Full-chip erase helper for SF32LB52 NOR flash.
rem Usage:
rem   erase_full_flash.bat
rem   erase_full_flash.bat COM9
rem Optional env:
rem   set FLASH_BASE=0x12000000
rem   set FLASH_SIZE=0x01000000

call "%~dp0set_paths.bat"

if not "%~1"=="" set "COM_PORT=%~1"
if not defined FLASH_BASE set "FLASH_BASE=0x12000000"
if not defined FLASH_SIZE set "FLASH_SIZE=0x01000000"

echo.
echo ============================================================
echo   FULL CHIP ERASE
echo ============================================================
echo   Tool   : %SFTOOL%
echo   Port   : %COM_PORT%
echo   Chip   : SF32LB52
echo   Memory : NOR
echo   Base   : %FLASH_BASE%
echo   Size   : %FLASH_SIZE%
echo ============================================================
echo.
echo Put board in download mode first:
echo   1. Hold Key1  2. Press Reset  3. Release Key1
echo.

if not exist "%SFTOOL%" (
    echo [FAIL] sftool not found: %SFTOOL%
    exit /b 1
)

echo [1/2] Try erase_flash ...
"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor --before no_reset --after soft_reset --connect-attempts 10 erase_flash %FLASH_BASE%
set "E1=%ERRORLEVEL%"

if "%E1%"=="0" (
    echo.
    echo [OK] Full chip erase completed by erase_flash.
    exit /b 0
)

echo.
echo [WARN] erase_flash failed ^(code=%E1%^), fallback to erase_region ...

"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor --before no_reset --after soft_reset --connect-attempts 10 erase_region %FLASH_BASE%:%FLASH_SIZE%
set "E2=%ERRORLEVEL%"

echo.
if "%E2%"=="0" (
    echo [OK] Full chip erase completed by erase_region.
    exit /b 0
) else (
    echo [FAIL] Full chip erase failed ^(erase_flash=%E1%, erase_region=%E2%^)
    exit /b %E2%
)

