@echo off
rem Central paths for this repo (efuse1). Safe to copy project to another disk.
rem This file lives in ex1\ — %~dp0 always resolves to the ex1 directory.
rem Override before calling: set SIFLI_HOME=D:\tools\sifli  (etc.)

set "EX1_ROOT=%~dp0"
set "EX1_ROOT=%EX1_ROOT:~0,-1%"
for %%I in ("%EX1_ROOT%\..") do set "REPO_ROOT=%%~fI"

if not defined SIFLI_SDK set "SIFLI_SDK=%REPO_ROOT%\SiFli-SDK\"
set "SEC_TOOL_DIR=%SIFLI_SDK%tools\secureboot"

if not defined SIFLI_HOME set "SIFLI_HOME=%USERPROFILE%\.sifli"
if not defined PYTHON_VENV set "PYTHON_VENV=%SIFLI_HOME%\python_env\sifli-sdk2.4_py3.12_env\Scripts"
if not defined RTT_EXEC_PATH set "RTT_EXEC_PATH=%SIFLI_HOME%\tools\arm-none-eabi-gcc\14.2.1\bin"
if not defined SFTOOL set "SFTOOL=%SIFLI_HOME%\tools\sftool\0.1.16\sftool.exe"

rem Default UART; override anytime: set COM_PORT=COM9
if not defined COM_PORT set "COM_PORT=COM6"
set "BOARD_DEFAULT=sf32lb52-lcd_n16r8_test"
