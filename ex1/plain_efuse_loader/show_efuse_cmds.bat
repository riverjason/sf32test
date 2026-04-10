@echo off
setlocal

call "%~dp0..\set_paths.bat"
"%PYTHON_VENV%\python.exe" "%~dp0show_efuse_cmds.py"
exit /b %ERRORLEVEL%
