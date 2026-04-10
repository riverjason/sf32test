@echo off
setlocal

call "%~dp0..\set_paths.bat"

if not "%~1"=="" set "COM_PORT=%~1"
if not defined COM_PORT set "COM_PORT=COM6"

"%PYTHON_VENV%\python.exe" "%~dp0verify_efuse_serial.py" --port %COM_PORT% --cmd "efuse info" --boot-wait 5 --open-retries 8
exit /b %ERRORLEVEL%
