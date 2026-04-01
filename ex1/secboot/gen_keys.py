"""Generate a complete secure boot key set for SF32LB52x eFuse programming."""
import os
import sys
from Cryptodome.Random import get_random_bytes
from Cryptodome.PublicKey import RSA
from Cryptodome.Hash import SHA256

KEY_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "keys")
os.makedirs(KEY_DIR, exist_ok=True)

# 1. UID (16 bytes random) - used as AES-CBC IV for image key decryption
uid = get_random_bytes(16)
open(os.path.join(KEY_DIR, "uid.bin"), "wb").write(uid)

# 2. ROOT KEY (32 bytes random AES-256) - used for image encryption/decryption
root = get_random_bytes(32)
open(os.path.join(KEY_DIR, "s01.bin"), "wb").write(root)

# 3. RSA-2048 signing keypair
key = RSA.generate(2048)
open(os.path.join(KEY_DIR, "sig_pri.pem"), "wb").write(key.export_key())
open(os.path.join(KEY_DIR, "sig_pub.pem"), "wb").write(key.publickey().export_key())
der = key.publickey().export_key(format="DER")
open(os.path.join(KEY_DIR, "sig_pub.der"), "wb").write(der)

# 4. SIG_HASH = SHA-256 of RSA public key DER (first 8 bytes go to eFuse)
h = SHA256.new()
h.update(der)
sig_hash_full = h.digest()
open(os.path.join(KEY_DIR, "sig_hash.bin"), "wb").write(sig_hash_full)

# Print eFuse programming data
print("=" * 60)
print("  Secure Boot Key Set Generated")
print("  Output: %s" % KEY_DIR)
print("=" * 60)
print()
print("Files generated:")
for f in ["uid.bin", "s01.bin", "sig_pri.pem", "sig_pub.pem", "sig_pub.der", "sig_hash.bin"]:
    fp = os.path.join(KEY_DIR, f)
    print("  %s (%d bytes)" % (f, os.path.getsize(fp)))
print()
print("=" * 60)
print("  eFuse Data to Program (use 'efuse write' MSH command)")
print("=" * 60)
print()

uid_hex = uid.hex()
root_hex = root.hex()
sig_hash_8 = sig_hash_full[:8].hex()
secure_hex = "a5000000"

print("1. UID (bit 0, 16 bytes):")
print("   efuse write 0 %s" % uid_hex)
print()
print("2. SIG_HASH (bit 128, 8 bytes) - first 8 bytes of SHA256(RSA_pub_DER):")
print("   efuse write 128 %s" % sig_hash_8)
print()
print("3. SECURE_ENABLED (bit 192, 4 bytes) - flag 0xA5:")
print("   efuse write 192 %s" % secure_hex)
print()
print("4. ROOT_KEY (bit 768, 32 bytes):")
print("   efuse write 768 %s" % root_hex)
print()
print("=" * 60)
print("  IMPORTANT: Write order recommendation")
print("=" * 60)
print("Step 1: efuse dump            (check current state)")
print("Step 2: efuse write 0 %s   (UID)" % uid_hex)
print("Step 3: efuse write 768 %s  (ROOT_KEY)" % root_hex)
print("Step 4: efuse write 128 %s          (SIG_HASH)" % sig_hash_8)
print("Step 5: efuse write 192 %s          (SECURE_ENABLED - write LAST!)" % secure_hex)
print()
print("WARNING: eFuse writes are IRREVERSIBLE!")
print("WARNING: Write SECURE_ENABLED last - once set, only signed images will boot!")
