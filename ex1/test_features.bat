@echo off
set PYTHON=C:\Users\jason\.sifli\python_env\sifli-sdk2.4_py3.12_env\Scripts\python.exe

%PYTHON% -c "
import serial, time, sys

s = serial.Serial('COM8', 1000000, timeout=1)

def send_cmd(cmd, wait=1.5):
    s.reset_input_buffer()
    s.write((cmd + '\r\n').encode())
    time.sleep(wait)
    data = s.read(s.in_waiting or 1)
    text = data.decode('utf-8', 'replace')
    print(f'=== Command: {cmd} ===')
    print(text)
    print()
    return text

# List threads to see breathing LED thread
send_cmd('list_thread')

# Check BLE status
send_cmd('cmd_ble status')

# Show our custom commands
send_cmd('cmd_uart_download')

s.close()
"
