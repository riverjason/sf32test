@echo off
set SIFLI_SDK=E:/study/sf32/SiFli-SDK/
set RTT_CC=gcc
set RTT_EXEC_PATH=C:\Users\jason\.sifli\tools\arm-none-eabi-gcc\14.2.1\bin

set PYTHON_VENV=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts
set PATH=%PYTHON_VENV%;%RTT_EXEC_PATH%;%SIFLI_SDK%tools\menuconfig\dist;%SIFLI_SDK%tools\scripts;%PATH%
set PYTHONPATH=%PYTHON_VENV%;%SIFLI_SDK%tools\build;%SIFLI_SDK%tools\build\default

cd /d E:\study\sf32\ex1\rtt\project

echo ============================================
echo   Building SF32LB52 Project
echo   SDK: %SIFLI_SDK%
echo   Toolchain: %RTT_CC% (%RTT_EXEC_PATH%)
echo ============================================

%PYTHON_VENV%\scons.exe --board=sf32lb52-lcd_n16r8_test -j12 2>&1

echo ============================================
echo   Build finished with exit code: %ERRORLEVEL%
echo ============================================
