@echo off
call "%~dp0set_paths.bat"
set "WORK_PATH=%EX1_ROOT%\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu"
if not defined COM_PORT set COM_PORT=COM6

cd /d "%WORK_PATH%"

echo ============================================
echo   UART Flash Download (SF32LB52)
echo   Port: %COM_PORT%
echo ============================================
echo.
echo Make sure the board is in download mode:
echo   1. Hold Key1 (PA34)
echo   2. Press Reset
echo   3. Release Key1
echo.

"%SFTOOL%" -p %COM_PORT% -c SF32LB52 -m nor write_flash "bootloader\bootloader.bin@0x12010000" "main.bin@0x12020000" "ftab\ftab.bin@0x12000000"

echo.
echo Flash finished with exit code: %ERRORLEVEL%
