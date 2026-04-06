"""
Test different AES-CTR counter schemes to find what the XIP hardware uses.
Compare SHA256 of decrypted data against device output and expected output.
"""
import hashlib, struct, os
from Cryptodome.Cipher import AES
from Cryptodome.Util import Counter

KEY_DIR  = r'e:\study\sf32\ex1\secboot\keys'
OUT_DIR  = r'e:\study\sf32\ex1\secboot\out'
IMG_PATH = r'e:\study\sf32\ex1\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu\main.bin'

root_key = open(os.path.join(KEY_DIR, 's01.bin'), 'rb').read()
sig_hash = open(os.path.join(KEY_DIR, 'sig_hash.bin'), 'rb').read()
print(f'ROOT_KEY:  {root_key.hex()}')
print(f'SIG_HASH:  {sig_hash.hex()}')

TOTAL_PARTION = 16
IMG_OFFSET = 4096 + 512 * 2
ftab_sec = open(os.path.join(OUT_DIR, 'ftab_sec.bin'), 'rb').read()
enc_session = ftab_sec[IMG_OFFSET+8 : IMG_OFFSET+8+32]
print(f'ENC_SESSION: {enc_session.hex()}')

cbc_iv = sig_hash[:8] + b'\x00' * 8
aes_cbc = AES.new(root_key, AES.MODE_CBC, cbc_iv)
session_key = aes_cbc.decrypt(enc_session)
print(f'SESSION_KEY: {session_key.hex()}')

enc_img = open(os.path.join(OUT_DIR, 'image_sec.bin'), 'rb').read()
print(f'Encrypted image size: {len(enc_img)}')

plain_img = open(IMG_PATH, 'rb').read()
r = len(plain_img) % 16
if r > 0:
    plain_img += b'\x00' * (16 - r)
expected_sha256 = hashlib.sha256(plain_img).hexdigest()
print(f'Expected SHA256: {expected_sha256}')
print(f'Expected first16: {plain_img[:16].hex().upper()}')

device_sha256_prefix = 'BD959E655AB3EDC5D2D75DFF32253A6C'
print(f'Device  SHA256 first16 bytes: {device_sha256_prefix}')
print()

cnt_prefix = sig_hash[:8] + b'\x00' * 4

# Scheme A: standard counter (what imgtool.py uses)
print("=== Scheme A: Standard Counter (block number, 32-bit) ===")
ctr = Counter.new(32, prefix=cnt_prefix, initial_value=0)
aes_ctr = AES.new(session_key, AES.MODE_CTR, counter=ctr)
dec_a = aes_ctr.decrypt(enc_img)
sha_a = hashlib.sha256(dec_a).hexdigest()
print(f'  SHA256: {sha_a}')
print(f'  first16: {dec_a[:16].hex().upper()}')
print(f'  match expected: {sha_a == expected_sha256}')
print(f'  match device:   {sha_a[:32].upper() == device_sha256_prefix}')
print()

# Scheme B: 64-bit counter (8-byte nonce + 8-byte counter)
print("=== Scheme B: 64-bit Counter ===")
nonce_8 = sig_hash[:8]
ctr_b = Counter.new(64, prefix=nonce_8, initial_value=0)
aes_ctr_b = AES.new(session_key, AES.MODE_CTR, counter=ctr_b)
dec_b = aes_ctr_b.decrypt(enc_img)
sha_b = hashlib.sha256(dec_b).hexdigest()
print(f'  SHA256: {sha_b}')
print(f'  first16: {dec_b[:16].hex().upper()}')
print(f'  match expected: {sha_b == expected_sha256}')
print(f'  match device:   {sha_b[:32].upper() == device_sha256_prefix}')
print()

# Scheme C: address-based counter with XIP base address 0x10020000
# counter = NONCE(8B) + (addr >> 4)(8B big-endian)
XIP_BASE = 0x10020000
print(f"=== Scheme C: Address-based (XIP base=0x{XIP_BASE:08X}, addr>>4) ===")
def decrypt_addr_based(data, key, nonce_8, base_addr, shift=4):
    out = b''
    for i in range(0, len(data), 16):
        block_addr = base_addr + i
        ctr_val = block_addr >> shift
        ctr_bytes = nonce_8 + ctr_val.to_bytes(8, 'big')
        aes_ecb = AES.new(key, AES.MODE_ECB)
        keystream = aes_ecb.encrypt(ctr_bytes)
        block = data[i:i+16]
        out += bytes(a ^ b for a, b in zip(block, keystream))
    return out

dec_c = decrypt_addr_based(enc_img, session_key, nonce_8, XIP_BASE, shift=4)
sha_c = hashlib.sha256(dec_c).hexdigest()
print(f'  SHA256: {sha_c}')
print(f'  first16: {dec_c[:16].hex().upper()}')
print(f'  match expected: {sha_c == expected_sha256}')
print(f'  match device:   {sha_c[:32].upper() == device_sha256_prefix}')
print()

# Scheme D: address-based counter with flash base 0x12020000
FLASH_BASE = 0x12020000
print(f"=== Scheme D: Address-based (flash base=0x{FLASH_BASE:08X}, addr>>4) ===")
dec_d = decrypt_addr_based(enc_img, session_key, nonce_8, FLASH_BASE, shift=4)
sha_d = hashlib.sha256(dec_d).hexdigest()
print(f'  SHA256: {sha_d}')
print(f'  first16: {dec_d[:16].hex().upper()}')
print(f'  match expected: {sha_d == expected_sha256}')
print(f'  match device:   {sha_d[:32].upper() == device_sha256_prefix}')
print()

# Scheme E: address offset from base (relative), no shift
print("=== Scheme E: Relative offset, no shift ===")
dec_e = decrypt_addr_based(enc_img, session_key, nonce_8, 0, shift=0)
sha_e = hashlib.sha256(dec_e).hexdigest()
print(f'  SHA256: {sha_e}')
print(f'  first16: {dec_e[:16].hex().upper()}')
print(f'  match expected: {sha_e == expected_sha256}')
print(f'  match device:   {sha_e[:32].upper() == device_sha256_prefix}')
print()

# Scheme F: XIP address-based, counter is (addr - base) >> 4
# (same as block number since base is start of image)
print("=== Scheme F: Relative block number ===")
dec_f = decrypt_addr_based(enc_img, session_key, nonce_8, 0, shift=4)
sha_f = hashlib.sha256(dec_f).hexdigest()
print(f'  SHA256: {sha_f}')
print(f'  first16: {dec_f[:16].hex().upper()}')
print(f'  match expected: {sha_f == expected_sha256}')
print(f'  match device:   {sha_f[:32].upper() == device_sha256_prefix}')
print()

# Scheme G: 4-byte nonce only (NONCEA+NONCEB as lower bytes) + counter
# nonce layout: 0x00000000 + NONCEA(4B) + NONCEB(4B) + counter(4B)
print("=== Scheme G: Swapped nonce layout ===")
nonce_g = b'\x00' * 4 + nonce_8
ctr_g = Counter.new(32, prefix=nonce_g, initial_value=0)
aes_ctr_g = AES.new(session_key, AES.MODE_CTR, counter=ctr_g)
dec_g = aes_ctr_g.decrypt(enc_img)
sha_g = hashlib.sha256(dec_g).hexdigest()
print(f'  SHA256: {sha_g}')
print(f'  first16: {dec_g[:16].hex().upper()}')
print(f'  match expected: {sha_g == expected_sha256}')
print(f'  match device:   {sha_g[:32].upper() == device_sha256_prefix}')
print()

# Scheme H: byte-swapped nonce (HAL_FLASH_SET_NONCE reverses byte order within each word)
# NONCEA = data[3]|(data[2]<<8)|(data[1]<<16)|(data[0]<<24)  → big-endian word from bytes 0-3
# NONCEB = data[7]|(data[6]<<8)|(data[5]<<16)|(data[4]<<24)  → big-endian word from bytes 4-7
# The hardware might output these as: NONCEA_bytes(BE) + NONCEB_bytes(BE) = same as input
# OR as: NONCEA_bytes(LE) + NONCEB_bytes(LE) = reversed within each 4-byte word
nonce_swapped = sig_hash[3::-1] + sig_hash[7:3:-1]  # reverse each 4-byte word
print(f"=== Scheme H: Word-swapped nonce ===")
print(f'  nonce_orig:    {sig_hash[:8].hex()}')
print(f'  nonce_swapped: {nonce_swapped.hex()}')
ctr_h = Counter.new(64, prefix=nonce_swapped, initial_value=0)
aes_ctr_h = AES.new(session_key, AES.MODE_CTR, counter=ctr_h)
dec_h = aes_ctr_h.decrypt(enc_img)
sha_h = hashlib.sha256(dec_h).hexdigest()
print(f'  SHA256: {sha_h}')
print(f'  first16: {dec_h[:16].hex().upper()}')
print(f'  match expected: {sha_h == expected_sha256}')
print(f'  match device:   {sha_h[:32].upper() == device_sha256_prefix}')
print()

# Scheme I: XIP_BASE addr-based with 64-bit counter, nonce only 8 bytes
# counter = NONCEA(4B_BE) || NONCEB(4B_BE) || ((addr - XIP_BASE) // 16) as 8B BE
print(f"=== Scheme I: Addr-based 64-bit counter from XIP_BASE ===")
def decrypt_addr_64(data, key, nonce_8, base_addr):
    out = b''
    for i in range(0, len(data), 16):
        block_num = (base_addr + i) // 16
        ctr_bytes = nonce_8 + block_num.to_bytes(8, 'big')
        aes_ecb = AES.new(key, AES.MODE_ECB)
        keystream = aes_ecb.encrypt(ctr_bytes)
        block = data[i:i+16]
        out += bytes(a ^ b for a, b in zip(block, keystream))
    return out

dec_i = decrypt_addr_64(enc_img, session_key, nonce_8, XIP_BASE)
sha_i = hashlib.sha256(dec_i).hexdigest()
print(f'  SHA256: {sha_i}')
print(f'  first16: {dec_i[:16].hex().upper()}')
print(f'  match expected: {sha_i == expected_sha256}')
print(f'  match device:   {sha_i[:32].upper() == device_sha256_prefix}')
print()

# Scheme J: flash addr-based with 64-bit counter
print(f"=== Scheme J: Addr-based 64-bit counter from FLASH_BASE ===")
dec_j = decrypt_addr_64(enc_img, session_key, nonce_8, FLASH_BASE)
sha_j = hashlib.sha256(dec_j).hexdigest()
print(f'  SHA256: {sha_j}')
print(f'  first16: {dec_j[:16].hex().upper()}')
print(f'  match expected: {sha_j == expected_sha256}')
print(f'  match device:   {sha_j[:32].upper() == device_sha256_prefix}')
