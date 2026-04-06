"""Generate a complete secure boot key set for SF32LB52x eFuse programming.

Note: UID is NOT used in the encryption pipeline. AES-CBC IV for session_key
encryption is derived from SIG_HASH, so one encrypted image works on all chips
with the same ROOT_KEY and SIG_HASH.
"""
import os
import sys
from Cryptodome.Random import get_random_bytes
from Cryptodome.PublicKey import RSA
from Cryptodome.Hash import SHA256

KEY_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "keys")
os.makedirs(KEY_DIR, exist_ok=True)

# 1. ROOT KEY (32 bytes random AES-256) - used for image encryption/decryption
root = get_random_bytes(32)
open(os.path.join(KEY_DIR, "s01.bin"), "wb").write(root)

# 2. RSA-2048 signing keypair
key = RSA.generate(2048)
open(os.path.join(KEY_DIR, "sig_pri.pem"), "wb").write(key.export_key())
open(os.path.join(KEY_DIR, "sig_pub.pem"), "wb").write(key.publickey().export_key())
der = key.publickey().export_key(format="DER")
open(os.path.join(KEY_DIR, "sig_pub.der"), "wb").write(der)

# 3. SIG_HASH = SHA-256 of RSA public key DER
#    First 8 bytes: AES-CTR counter prefix AND AES-CBC IV (padded to 16B)
#    Full 8 bytes: burned into eFuse Bank0
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
for f in ["s01.bin", "sig_pri.pem", "sig_pub.pem", "sig_pub.der", "sig_hash.bin"]:
    fp = os.path.join(KEY_DIR, f)
    print("  %s (%d bytes)" % (f, os.path.getsize(fp)))
print()
print("=" * 60)
print("  eFuse Data to Program (use 'efuse write' MSH command)")
print("=" * 60)
print()

root_hex = root.hex()
sig_hash_8 = sig_hash_full[:8].hex()
secure_hex = "a5000000"

print("1. SIG_HASH (bit 128, 8 bytes) - first 8 bytes of SHA256(RSA_pub_DER):")
print("   efuse write 128 %s" % sig_hash_8)
print()
print("2. ROOT_KEY (bit 768, 32 bytes):")
print("   efuse write 768 %s" % root_hex)
print()
print("3. SECURE_ENABLED (bit 192, 4 bytes) - flag 0xA5:")
print("   efuse write 192 %s" % secure_hex)
print()
print("=" * 60)
print("  IMPORTANT: Write order recommendation")
print("=" * 60)
print("Step 1: efuse dump            (check current state)")
print("Step 2: efuse write 768 %s  (ROOT_KEY)" % root_hex)
print("Step 3: efuse write 128 %s          (SIG_HASH)" % sig_hash_8)
print("Step 4: efuse write 192 %s          (SECURE_ENABLED - write LAST!)" % secure_hex)
print()
print("NOTE: UID (Bank0 bit 0) is factory-programmed and NOT used for encryption.")
print("      The same encrypted image works on all chips sharing ROOT_KEY + SIG_HASH.")
print()
print("WARNING: eFuse writes are IRREVERSIBLE!")
print("WARNING: Write SECURE_ENABLED last - once set, only signed images will boot!")
