import serial
import time
import sys

s = serial.Serial('COM6', 1000000, timeout=1)

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

send_cmd('list_thread')
send_cmd('cmd_ble status')
send_cmd('cmd_uart_download')

s.close()
