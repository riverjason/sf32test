@echo off
setlocal enabledelayedexpansion

set ROOT_DIR=E:\study\sf32\ex1

echo ========================================================
echo   SF32LB52 Secure Build ^& Flash
echo ========================================================
echo.

call "%ROOT_DIR%\build.bat"
if errorlevel 1 (
    echo [FAIL] Build failed.
    exit /b 1
)

call "%ROOT_DIR%\secboot\gen_sec_img.bat"
if errorlevel 1 (
    echo [FAIL] Generate secure image failed.
    exit /b 1
)

call "%ROOT_DIR%\secboot\flash_sec_all.bat"
if errorlevel 1 (
    echo [FAIL] Flash secure image failed.
    exit /b 1
)

echo.
echo [OK] Secure build and flash completed.
endlocal
