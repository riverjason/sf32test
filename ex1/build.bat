@echo off
call "%~dp0set_paths.bat"
set RTT_CC=gcc
set PATH=%PYTHON_VENV%;%RTT_EXEC_PATH%;%SIFLI_SDK%tools\menuconfig\dist;%SIFLI_SDK%tools\scripts;%PATH%
set PYTHONPATH=%PYTHON_VENV%;%SIFLI_SDK%tools\build;%SIFLI_SDK%tools\build\default

cd /d "%EX1_ROOT%\rtt\project"

echo ============================================
echo   Building SF32LB52 Project
echo   SDK: %SIFLI_SDK%
echo   Toolchain: %RTT_CC% (%RTT_EXEC_PATH%)
echo ============================================

"%PYTHON_VENV%\scons.exe" --board=%BOARD_DEFAULT% -j12 2>&1

echo ============================================
echo   Build finished with exit code: %ERRORLEVEL%
echo ============================================
