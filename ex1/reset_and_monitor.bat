@echo off
set SFTOOL=C:\Users\jason\.sifli\tools\sftool\0.1.16\sftool.exe
set PYTHON=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts\python.exe

echo === Resetting board via sftool ===
%SFTOOL% -p COM8 -c SF32LB52 --after soft_reset 2>nul

echo.
echo === Monitoring COM8 at 1000000 baud for 12 seconds ===
echo === (Press Reset on board if no output appears) ===
echo.

%PYTHON% -c "import serial,time;s=serial.Serial('COM8',1000000,timeout=1);t=time.time();[print(s.read(s.in_waiting or 1).decode('utf-8','replace'),end='',flush=True) or time.sleep(0.05) for _ in iter(lambda:time.time()-t<12,False)];s.close();print();print('--- Done ---')"
