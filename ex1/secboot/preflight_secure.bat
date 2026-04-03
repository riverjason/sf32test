@echo off
setlocal
call "%~dp0..\set_paths.bat"
set "PY=%PYTHON_VENV%\python.exe"
set "KEY_DIR=%~dp0keys"

set "OPT="
if not defined SKIP_FLASH_ARTIFACT_CHECK set "OPT=--require-flash-artifacts"

if "%~1"=="" (
  "%PY%" "%~dp0preflight_secure_efuse.py" --key-dir "%KEY_DIR%" --fetch --port %COM_PORT% %OPT% %PREFLIGHT_EXTRA%
) else (
  "%PY%" "%~dp0preflight_secure_efuse.py" --key-dir "%KEY_DIR%" --efuse-info-file "%~f1" %OPT% %PREFLIGHT_EXTRA%
)
set "EC=%ERRORLEVEL%"
endlocal & exit /b %EC%
