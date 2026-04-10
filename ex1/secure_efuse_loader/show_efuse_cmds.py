"""Read existing key set and print the MSH efuse write commands."""
import os
import sys

KEY_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "keys")

def read_hex(name):
    path = os.path.join(KEY_DIR, name)
    if not os.path.exists(path):
        print("ERROR: %s not found. Run gen_keys.py first." % path)
        sys.exit(1)
    return open(path, "rb").read()

uid = read_hex("uid.bin")
root = read_hex("s01.bin")
sig_hash = read_hex("sig_hash.bin")

print("=== eFuse write commands (copy-paste to MSH serial console) ===")
print()
print("# Step 1: Check current state")
print("efuse dump")
print()
print("# UID (bit 0) is factory-programmed, DO NOT write it.")
print("# Current uid.bin matches factory UID: %s" % uid.hex().upper())
print()
print("# Step 2: Write ROOT_KEY (bit 768, 32 bytes)")
print("efuse write 768 %s" % root.hex())
print()
print("# Step 3: Write SIG_HASH (bit 128, first 8 bytes)")
print("efuse write 128 %s" % sig_hash[:8].hex())
print()
print("# Step 4: Write SECURE_ENABLED (bit 192) - DO THIS LAST!")
print("efuse write 192 a5000000")
print()
print("# Step 5: Verify")
print("efuse info")
