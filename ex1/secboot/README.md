# SF32LB52 Secure Boot Workflow

This folder integrates the SDK secureboot toolchain into the `ex1` project.

## What is implemented

- Generate encrypted + signed application image (`image_sec.bin`)
- Generate signed flash table (`ftab_sec.bin`)
- Flash secure image set with bootloader
- Optional one-time eFuse programming helper

## Scripts

- `gen_sec_img.bat`
  - Input:
    - `rtt/project/build_sf32lb52-lcd_n16r8_test_hcpu/main.bin`
    - `rtt/project/build_sf32lb52-lcd_n16r8_test_hcpu/ftab/ftab.bin`
  - Output:
    - `secboot/out/image_sec.bin`
    - `secboot/out/ftab_sec.bin`

- `flash_sec_all.bat`
  - Writes:
    - `bootloader.bin @ 0x12010000`
    - `image_sec.bin @ 0x12020000`
    - `ftab_sec.bin @ 0x12000000`

- `..\build_and_flash_sec.bat`
  - Build -> Generate secure image -> Flash secure image

- `program_efuse_once.bat`
  - Wrapper for SDK `program_efuse.bat`
  - Irreversible operation. Use only after validation.

## Key set used

Current scripts use SDK test keys in:

- `SiFli-SDK/tools/secureboot/sifli01/`

For production, replace with your own root/signing keys and update script paths.

## Notes

- Secure boot verification occurs in bootloader when image has encryption/sign flags.
- If eFuse root/sig-hash does not match the key set used to generate secure images, boot will fail.
- Validate on development boards before any production fuse operation.
