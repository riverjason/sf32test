@echo off
set PYTHON=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts\python.exe

echo === Monitoring COM8 at 1000000 baud for 15 seconds ===
echo === Board should have been reset by sftool --after soft_reset ===
echo === If no output, try pressing the Reset button on the board ===
echo.

%PYTHON% -c "import serial,time,sys;s=serial.Serial('COM8',1000000,timeout=0.5);buf=b'';t=time.time();exec('while time.time()-t<15:\n n=s.in_waiting\n if n>0:\n  d=s.read(n)\n  buf+=d\n  sys.stdout.write(d.decode(\"utf-8\",\"replace\"))\n  sys.stdout.flush()\n else:\n  time.sleep(0.1)');s.close();print();print(f'Total bytes received: {len(buf)}')"
