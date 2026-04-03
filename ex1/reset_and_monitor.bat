@echo off
call "%~dp0set_paths.bat"
set "PYTHON=%PYTHON_VENV%\python.exe"

echo === Resetting board via sftool ===
"%SFTOOL%" -p %COM_PORT% -c SF32LB52 --after soft_reset 2>nul

echo.
echo === Monitoring %COM_PORT% at 1000000 baud for 12 seconds ===
echo === (Press Reset on board if no output appears) ===
echo.

"%PYTHON%" -c "import os,serial,time;port=os.environ.get('COM_PORT','COM6');s=serial.Serial(port,1000000,timeout=1);t=time.time();[print(s.read(s.in_waiting or 1).decode('utf-8','replace'),end='',flush=True) or time.sleep(0.05) for _ in iter(lambda:time.time()-t<12,False)];s.close();print();print('--- Done ---')"
