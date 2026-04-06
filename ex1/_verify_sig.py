import hashlib, sys
from Cryptodome.PublicKey import RSA
from Cryptodome.Signature import pkcs1_15
from Cryptodome.Hash import SHA256
try:
    RSA
except:
    from Crypto.PublicKey import RSA
    from Crypto.Signature import pkcs1_15
    from Crypto.Hash import SHA256

img_path = r'e:\study\sf32\ex1\rtt\project\build_sf32lb52-lcd_n16r8_test_hcpu\main.bin'
key_dir = r'e:\study\sf32\ex1\secboot\keys'
out_dir = r'e:\study\sf32\ex1\secboot\out'

d = open(img_path, 'rb').read()
r = len(d) % 16
if r > 0:
    d = d + b'\x00' * (16 - r)

print(f'Image padded size: {len(d)}')
img_hash = SHA256.new(bytes(d))
print(f'SHA256: {img_hash.hexdigest()}')

pri_key = RSA.import_key(open(key_dir + r'\sig_pri.pem').read())
pub_key = RSA.import_key(open(key_dir + r'\sig_pub.der', 'rb').read())

sig_from_file = pkcs1_15.new(pri_key).sign(img_hash)
print(f'Signature (first 16 bytes): {sig_from_file[:16].hex()}')

# Read the actual signature from enc_ftab.bin (ftab_sec.bin)
ftab_sec = open(out_dir + r'\ftab_sec.bin', 'rb').read()

# image_header_enc is at IMG_OFFSET in the ftab
# From imgtool.py constants:
TOTAL_PARTION = 16
SIG_OFFSET = 4 + TOTAL_PARTION * 16   # 260 = 0x104
IMG_OFFSET = 4096 + 512 * 2           # 5120 = 0x1400

hdr_data = ftab_sec[IMG_OFFSET:]
img_len_bytes = hdr_data[0:4]
img_len = int.from_bytes(img_len_bytes, 'little')
bksize = int.from_bytes(hdr_data[4:6], 'little')
flags = int.from_bytes(hdr_data[6:8], 'little')
enc_session = hdr_data[8:40]
signature_in_ftab = hdr_data[40:296]

print(f'\n--- From ftab_sec.bin ---')
print(f'img_len: {img_len} (0x{img_len:X})')
print(f'bksize: {bksize}')
print(f'flags: 0x{flags:X}')
print(f'enc_session: {enc_session.hex()}')
print(f'sig_in_ftab (first 16): {signature_in_ftab[:16].hex()}')

# Verify the signature in ftab against the image hash
try:
    pkcs1_15.new(pub_key).verify(img_hash, signature_in_ftab)
    print('\n[OK] Signature in ftab_sec.bin is VALID for main.bin')
except Exception as e:
    print(f'\n[FAIL] Signature verification failed: {e}')

# Also check sig_pub_key in ftab
sig_pub_in_ftab = ftab_sec[SIG_OFFSET:SIG_OFFSET+294]
sig_pub_from_file = open(key_dir + r'\sig_pub.der', 'rb').read()
if sig_pub_in_ftab == sig_pub_from_file:
    print('[OK] Public key in ftab matches sig_pub.der')
else:
    print('[FAIL] Public key mismatch!')
    print(f'  ftab:  {sig_pub_in_ftab[:20].hex()}...')
    print(f'  file:  {sig_pub_from_file[:20].hex()}...')

# Verify pubkey hash matches sig_hash.bin
pubkey_hash = hashlib.sha256(sig_pub_from_file).digest()[:8]
sig_hash_bin = open(key_dir + r'\sig_hash.bin', 'rb').read()
if pubkey_hash == sig_hash_bin[:8]:
    print('[OK] Public key SHA256[:8] matches sig_hash.bin')
else:
    print(f'[FAIL] pubkey hash {pubkey_hash.hex()} != sig_hash {sig_hash_bin[:8].hex()}')
