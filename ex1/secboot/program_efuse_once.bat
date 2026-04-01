@echo off
setlocal

set SEC_TOOL_DIR=E:\study\sf32\SiFli-SDK\tools\secureboot
set KEY_DIR=E:\study\sf32\ex1\secboot\keys
set COM_PORT=COM8
set PYTHON_VENV=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts
set PATH=%PYTHON_VENV%;%PATH%

echo ========================================================
echo   EFUSE PROGRAMMING (ONE-TIME, IRREVERSIBLE)
echo ========================================================
echo KEY_DIR : %KEY_DIR%
echo PORT    : %COM_PORT%
echo.
echo WARNING:
echo - This operation is irreversible.
echo - Root key / sig hash must match your secure image keys forever.
echo - Do NOT run on production boards before full validation.
echo.
pause

cd /d "%SEC_TOOL_DIR%"
call program_efuse.bat "%KEY_DIR%\" %COM_PORT%

echo.
echo EFUSE script finished with exit code: %ERRORLEVEL%
endlocal
