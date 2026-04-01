@echo off
setlocal enabledelayedexpansion

if not defined COM_PORT set "COM_PORT=COM6"
set "PY=C:\Users\EDY\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts\python.exe"
if not exist "%PY%" set "PY=python"

"%PY%" "%~dp0auto_secure_efuse.py" --port %COM_PORT% %*
exit /b %ERRORLEVEL%

