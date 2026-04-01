@echo off
cd /d "%~dp0"
python sf32_serial_assistant.py
if errorlevel 1 (
  echo.
  echo If "No module named serial", run: pip install -r requirements.txt
  pause
)
