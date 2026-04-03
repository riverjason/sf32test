@echo off
setlocal EnableDelayedExpansion

call "%~dp0..\set_paths.bat"
set "KEY_DIR=%EX1_ROOT%\secboot\keys"
set "PY=%PYTHON_VENV%\python.exe"
set PATH=%PYTHON_VENV%;%PATH%

echo ========================================================
echo   EFUSE SECURE PROGRAMMING (IRREVERSIBLE)
echo ========================================================
echo KEY_DIR  : %KEY_DIR%
echo PORT     : %COM_PORT%
echo.
echo SDK UART sequence: enable_secure, uid, root, sighash (see program_efuse.bat^)
echo.
echo STEP 1 — Preflight (keys + live chip^)
echo.

if defined SKIP_FLASH_ARTIFACT_CHECK (
  "%PY%" "%EX1_ROOT%\secboot\preflight_secure_efuse.py" --key-dir "%KEY_DIR%" --fetch --port %COM_PORT% %PREFLIGHT_EXTRA%
) else (
  "%PY%" "%EX1_ROOT%\secboot\preflight_secure_efuse.py" --key-dir "%KEY_DIR%" --fetch --port %COM_PORT% --require-flash-artifacts %PREFLIGHT_EXTRA%
)
if errorlevel 1 (
  echo.
  echo [ABORT] Preflight failed — fix errors before any eFuse burn.
  endlocal & exit /b 1
)

if /i not "%CONFIRM_SECURE_EFUSE%"=="YES" (
  echo.
  echo [BLOCKED] Set CONFIRM_SECURE_EFUSE=YES after reviewing preflight, then re-run.
  echo Optional: SKIP_FLASH_ARTIFACT_CHECK=1 if secboot\out not ready (risky^).
  endlocal & exit /b 2
)

echo.
echo STEP 2 — Type YES to proceed with UART eFuse programming:
set /p EFUSE_YES=^> 
if not "!EFUSE_YES!"=="YES" (
  echo Aborted.
  endlocal & exit /b 3
)

echo.
cd /d "%SEC_TOOL_DIR%"
call program_efuse.bat "%KEY_DIR%\" %COM_PORT%

echo.
echo EFUSE script finished with exit code: %ERRORLEVEL%
endlocal & exit /b %ERRORLEVEL%
