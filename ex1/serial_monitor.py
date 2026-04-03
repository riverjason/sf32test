import serial
import time
import sys

port = sys.argv[1] if len(sys.argv) > 1 else "COM6"
baud = int(sys.argv[2]) if len(sys.argv) > 2 else 1000000

try:
    ser = serial.Serial(port, baud, timeout=1)
    print(f"Listening on {port} at {baud} baud... (10 seconds)")
    
    ser.dtr = False
    time.sleep(0.1)
    ser.dtr = True
    time.sleep(0.1)
    ser.dtr = False
    
    start = time.time()
    while time.time() - start < 10:
        data = ser.read(ser.in_waiting or 1)
        if data:
            try:
                text = data.decode('utf-8', errors='replace')
                print(text, end='', flush=True)
            except:
                pass
    ser.close()
    print("\n--- Done ---")
except Exception as e:
    print(f"Error: {e}")
