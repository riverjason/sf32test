@echo off
setlocal
call "%~dp0set_paths.bat"
set "BUILD_DIR=%EX1_ROOT%\rtt\project\build_%BOARD_DEFAULT%_hcpu"

echo ---- Flash bootloader only ----
"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor --before no_reset --after soft_reset --connect-attempts 10 write_flash --verify "%BUILD_DIR%\bootloader\bootloader.bin@0x12010000"
if errorlevel 1 (
    echo [FAIL] Flash failed
    exit /b 1
)
echo [OK] Bootloader flashed
endlocal
