@echo off
call "%~dp0set_paths.bat"
set "PYTHON=%PYTHON_VENV%\python.exe"

"%PYTHON%" -c "import os,serial,time,sys;port=os.environ.get('COM_PORT','COM6');s=serial.Serial(port,1000000,timeout=1);s.write(b'\r\n');time.sleep(0.5);s.write(b'\r\n');time.sleep(0.5);d=s.read(s.in_waiting or 1);print(f'Received {len(d)} bytes: {repr(d[:200])}');s.write(b'help\r\n');time.sleep(1);d=s.read(s.in_waiting or 1);print(f'After help cmd, received {len(d)} bytes: {repr(d[:500])}');s.close()"
