@echo off
set PYTHON=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts\python.exe

%PYTHON% -c "import serial,time,sys;s=serial.Serial('COM8',1000000,timeout=1);s.write(b'\r\n');time.sleep(0.5);s.write(b'\r\n');time.sleep(0.5);d=s.read(s.in_waiting or 1);print(f'Received {len(d)} bytes: {repr(d[:200])}');s.write(b'help\r\n');time.sleep(1);d=s.read(s.in_waiting or 1);print(f'After help cmd, received {len(d)} bytes: {repr(d[:500])}');s.close()"
