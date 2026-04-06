import hashlib, os, sys

img_path = r'e:\study\sf32\ex1\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu\main.bin'
d = open(img_path, 'rb').read()
orig_size = len(d)
r = orig_size % 16
if r > 0:
    d = d + b'\x00' * (16 - r)
padded_size = len(d)
h = hashlib.sha256(d).hexdigest()
print(f'orig_size={orig_size} padded_size={padded_size} sha256={h}')
print(f'first16_hex={d[:16].hex().upper()}')
