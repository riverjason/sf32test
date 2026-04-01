#include <rtthread.h>
#include <string.h>
#include <stdlib.h>
#include "bf0_hal.h"

#define EFUSE_BANK_NUM       HAL_EFUSE_BANK_NUM   /* 4 */
#define EFUSE_BANK_BYTES     HAL_EFUSE_BANK_SIZE  /* 32 */
#define EFUSE_TOTAL_BYTES    (EFUSE_BANK_NUM * EFUSE_BANK_BYTES)  /* 128 */

/* Well-known field offsets (bit) and sizes (bytes) from bootloader/efuse.c */
#define FIELD_UID_BIT        0
#define FIELD_UID_SIZE       16
#define FIELD_SIGHASH_BIT    128
#define FIELD_SIGHASH_SIZE   8
#define FIELD_SECURE_BIT     192
#define FIELD_SECURE_SIZE    4
#define FIELD_ROOT_BIT       768
#define FIELD_ROOT_SIZE      32

/* SDK middleware/security.md: root key is in eFuse BANK3 "不可读区域"; CPU read may be all-zero. */
#define EFUSE_BANK3_BIT_MIN  768
#define EFUSE_BANK3_BIT_MAX  1023

static int efuse_offset_in_bank3(int bit_offset)
{
    return (bit_offset >= EFUSE_BANK3_BIT_MIN && bit_offset <= EFUSE_BANK3_BIT_MAX);
}

static void hex_dump_line(const uint8_t *buf, int len, int base_byte_off)
{
    int i;
    rt_kprintf("  [%3d] ", base_byte_off);
    for (i = 0; i < len; i++)
        rt_kprintf("%02X ", buf[i]);
    for (; i < 16; i++)
        rt_kprintf("   ");
    rt_kprintf(" |");
    for (i = 0; i < len; i++)
        rt_kprintf("%c", (buf[i] >= 0x20 && buf[i] < 0x7F) ? buf[i] : '.');
    rt_kprintf("|\n");
}

static void hex_dump(const uint8_t *buf, int len, int base_byte_off)
{
    while (len > 0)
    {
        int n = (len > 16) ? 16 : len;
        hex_dump_line(buf, n, base_byte_off);
        buf += n;
        base_byte_off += n;
        len -= n;
    }
}

static int efuse_read_bank(int bank, uint8_t out[EFUSE_BANK_BYTES])
{
    int ret;
    HAL_EFUSE_Init();
    ret = HAL_EFUSE_Read((uint16_t)(bank * 256), out, EFUSE_BANK_BYTES);
    if (ret != EFUSE_BANK_BYTES)
    {
        rt_kprintf("HAL_EFUSE_Read bank %d failed (ret=%d)\n", bank, ret);
        return -1;
    }
    return 0;
}

static void cmd_efuse_dump(void)
{
    uint8_t buf[EFUSE_BANK_BYTES];
    int bank;

    rt_kprintf("=== eFuse Full Dump (%d banks x %d bytes = %d bytes) ===\n",
               EFUSE_BANK_NUM, EFUSE_BANK_BYTES, EFUSE_TOTAL_BYTES);

    for (bank = 0; bank < EFUSE_BANK_NUM; bank++)
    {
        rt_kprintf("--- Bank %d (bit %d-%d, byte %d-%d) ---\n",
                   bank, bank * 256, bank * 256 + 255,
                   bank * EFUSE_BANK_BYTES, (bank + 1) * EFUSE_BANK_BYTES - 1);
        if (efuse_read_bank(bank, buf) == 0)
            hex_dump(buf, EFUSE_BANK_BYTES, bank * EFUSE_BANK_BYTES);
    }
}

static void cmd_efuse_info(void)
{
    uint8_t buf[EFUSE_BANK_BYTES];
    int i;

    rt_kprintf("=== eFuse Known Fields ===\n");

    /* UID: bank 0, byte 0-15 */
    if (efuse_read_bank(0, buf) == 0)
    {
        rt_kprintf("UID         (bit %3d, %2d bytes): ", FIELD_UID_BIT, FIELD_UID_SIZE);
        for (i = 0; i < FIELD_UID_SIZE; i++)
            rt_kprintf("%02X", buf[i]);
        rt_kprintf("\n");

        /* SIG_HASH: bank 0, byte 16-23 */
        rt_kprintf("SIG_HASH    (bit %3d, %2d bytes): ", FIELD_SIGHASH_BIT, FIELD_SIGHASH_SIZE);
        for (i = 16; i < 16 + FIELD_SIGHASH_SIZE; i++)
            rt_kprintf("%02X", buf[i]);
        rt_kprintf("\n");

        /* SECURE: bank 0, byte 24-27 */
        rt_kprintf("SECURE_FLAG (bit %3d, %2d bytes): ", FIELD_SECURE_BIT, FIELD_SECURE_SIZE);
        for (i = 24; i < 24 + FIELD_SECURE_SIZE; i++)
            rt_kprintf("%02X", buf[i]);
        rt_kprintf("  => secure_enabled = 0x%02X\n", buf[24]);
    }

    /* ROOT KEY: bank 3, byte 0-31 — may read as 0x00.. by design (non-readable to software). */
    if (efuse_read_bank(3, buf) == 0)
    {
        rt_kprintf("ROOT_KEY    (bit %3d, %2d bytes): ", FIELD_ROOT_BIT, FIELD_ROOT_SIZE);
        for (i = 0; i < FIELD_ROOT_SIZE; i++)
            rt_kprintf("%02X", buf[i]);
        rt_kprintf("\n");
        rt_kprintf("            (note: BANK3 is non-readable to CPU on 52x; zeros here do not mean empty key.)\n");
    }
}

static int parse_hex_byte(const char *s)
{
    int hi, lo;
    if (s[0] >= '0' && s[0] <= '9')      hi = s[0] - '0';
    else if (s[0] >= 'a' && s[0] <= 'f') hi = s[0] - 'a' + 10;
    else if (s[0] >= 'A' && s[0] <= 'F') hi = s[0] - 'A' + 10;
    else return -1;

    if (s[1] >= '0' && s[1] <= '9')      lo = s[1] - '0';
    else if (s[1] >= 'a' && s[1] <= 'f') lo = s[1] - 'a' + 10;
    else if (s[1] >= 'A' && s[1] <= 'F') lo = s[1] - 'A' + 10;
    else return -1;

    return (hi << 4) | lo;
}

static void cmd_efuse_read(int bit_offset, int size)
{
    uint8_t buf[EFUSE_BANK_BYTES];
    int ret;

    if ((bit_offset & 31) != 0)
    {
        rt_kprintf("Error: bit_offset must be 32-bit aligned\n");
        return;
    }
    if ((size & 3) != 0 || size == 0)
    {
        rt_kprintf("Error: size must be a positive multiple of 4\n");
        return;
    }
    if (size > EFUSE_BANK_BYTES)
    {
        rt_kprintf("Error: size cannot exceed %d (one bank)\n", EFUSE_BANK_BYTES);
        return;
    }

    int byte_off_in_bank = (bit_offset >> 3) % EFUSE_BANK_BYTES;
    if (byte_off_in_bank + size > EFUSE_BANK_BYTES)
    {
        rt_kprintf("Error: read would cross bank boundary\n");
        return;
    }

    if (efuse_offset_in_bank3(bit_offset))
        rt_kprintf("Note: BANK3 is non-readable to CPU on 52x; data may be all zeros.\n");

    HAL_EFUSE_Init();
    ret = HAL_EFUSE_Read((uint16_t)bit_offset, buf, size);
    if (ret != size)
    {
        rt_kprintf("HAL_EFUSE_Read failed (ret=%d)\n", ret);
        return;
    }

    rt_kprintf("eFuse read: bit_offset=%d, size=%d bytes\n", bit_offset, size);
    hex_dump(buf, size, bit_offset / 8);
}

static void efuse_pa30_enable(uint32_t *saved_pa30)
{
#ifdef SF32LB52X
    *saved_pa30 = hwp_pinmux1->PAD_PA30;
    uint32_t val = *saved_pa30;
    val &= ~HPSYS_PINMUX_PAD_PA30_FSEL_Msk;
    val |= (2u << HPSYS_PINMUX_PAD_PA30_FSEL_Pos);
    val &= ~HPSYS_PINMUX_PAD_PA30_IE_Msk;
    hwp_pinmux1->PAD_PA30 = val;
    HAL_Delay_us(10);
#else
    *saved_pa30 = 0;
#endif
}

static void efuse_pa30_restore(uint32_t saved_pa30)
{
#ifdef SF32LB52X
    hwp_pinmux1->PAD_PA30 = saved_pa30;
#endif
}

static void cmd_efuse_write(int bit_offset, const char *hex_str)
{
    uint8_t buf[EFUSE_BANK_BYTES];
    int hex_len, data_len, i, ret;

    hex_len = (int)strlen(hex_str);
    if (hex_len & 1)
    {
        rt_kprintf("Error: hex string must have even length\n");
        return;
    }
    data_len = hex_len / 2;

    if ((bit_offset & 31) != 0)
    {
        rt_kprintf("Error: bit_offset must be 32-bit aligned\n");
        return;
    }
    if ((data_len & 3) != 0 || data_len == 0)
    {
        rt_kprintf("Error: data length must be a positive multiple of 4 bytes\n");
        return;
    }
    if (data_len > EFUSE_BANK_BYTES)
    {
        rt_kprintf("Error: data cannot exceed %d bytes (one bank)\n", EFUSE_BANK_BYTES);
        return;
    }

    int byte_off_in_bank = (bit_offset >> 3) % EFUSE_BANK_BYTES;
    if (byte_off_in_bank + data_len > EFUSE_BANK_BYTES)
    {
        rt_kprintf("Error: write would cross bank boundary\n");
        return;
    }

    for (i = 0; i < data_len; i++)
    {
        int v = parse_hex_byte(&hex_str[i * 2]);
        if (v < 0)
        {
            rt_kprintf("Error: invalid hex char at position %d\n", i * 2);
            return;
        }
        buf[i] = (uint8_t)v;
    }

    rt_kprintf("WARNING: eFuse write is IRREVERSIBLE! Bits can only be set 0->1, never cleared.\n");
    rt_kprintf("  bit_offset = %d (bank %d, byte %d)\n",
               bit_offset, bit_offset / 256, (bit_offset / 8) % EFUSE_BANK_BYTES);
    rt_kprintf("  data (%d bytes) = ", data_len);
    for (i = 0; i < data_len; i++)
        rt_kprintf("%02X", buf[i]);
    rt_kprintf("\n");
    rt_kprintf("Proceeding with write...\n");

    {
        HAL_StatusTypeDef init_rc = HAL_EFUSE_Init();
        rt_kprintf("  HAL_EFUSE_Init() = %d\n", (int)init_rc);
        if (init_rc != HAL_OK)
        {
            rt_kprintf("  EFUSE init failed, aborting.\n");
            return;
        }
    }

#ifdef SF32LB52X
    rt_kprintf("  HPSYS_VOUT=0x%x, ANAU_CR=0x%08x, PAD_PA30=0x%08x\n",
               (unsigned)hwp_pmuc->HPSYS_VOUT,
               (unsigned)hwp_hpsys_cfg->ANAU_CR,
               (unsigned)hwp_pinmux1->PAD_PA30);
#endif

    uint32_t saved_pa30;
    efuse_pa30_enable(&saved_pa30);
    rt_kprintf("  PA30 -> EFUSE_PWR (sel=2)\n");

    ret = HAL_EFUSE_Write((uint16_t)bit_offset, buf, data_len);

    efuse_pa30_restore(saved_pa30);

#ifdef SF32LB52X
    rt_kprintf("  After write: HPSYS_VOUT=0x%x, ANAU_CR=0x%08x\n",
               (unsigned)hwp_pmuc->HPSYS_VOUT,
               (unsigned)hwp_hpsys_cfg->ANAU_CR);
#endif

    if (ret != data_len)
    {
        rt_kprintf("HAL_EFUSE_Write FAILED (ret=%d, expected=%d)\n", ret, data_len);
        return;
    }
    rt_kprintf("HAL_EFUSE_Write OK (ret=%d).\n", ret);

    if (efuse_offset_in_bank3(bit_offset))
    {
        rt_kprintf("BANK3 (root key): per SiFli 52x security doc, this bank is not readable by software.\n");
        rt_kprintf("Read-back verify is skipped; all-zero read is normal. Confirm via secure boot / AES root key.\n");
        rt_kprintf("To test the programming path on a readable OTP region first, try SIG_HASH (bit 128, 8 bytes).\n");
        return;
    }

    rt_kprintf("Verifying by read-back...\n");
    {
        uint8_t verify[EFUSE_BANK_BYTES];
        ret = HAL_EFUSE_Read((uint16_t)bit_offset, verify, data_len);
        if (ret != data_len)
        {
            rt_kprintf("Verify read failed (ret=%d)\n", ret);
            return;
        }
        if (memcmp(buf, verify, data_len) == 0)
            rt_kprintf("Verify PASSED!\n");
        else
        {
            rt_kprintf("Verify MISMATCH!\n  Written: ");
            for (i = 0; i < data_len; i++)
                rt_kprintf("%02X", buf[i]);
            rt_kprintf("\n  Read:    ");
            for (i = 0; i < data_len; i++)
                rt_kprintf("%02X", verify[i]);
            rt_kprintf("\n");
        }
    }
}

/* Reserved bank2 bytes 64-67 (bit 512): prefer for autotest — bank1 may already be partially used. */
#define EFUSE_AUTOTEST_BIT_OFFSET  512
#define EFUSE_AUTOTEST_SIZE         4

static void cmd_efuse_test(int argc, char *argv[])
{
    uint8_t pat[EFUSE_AUTOTEST_SIZE] = { 0xEF, 0xAC, 0xED, 0x00 };
    uint8_t oldb[EFUSE_AUTOTEST_SIZE];
    uint8_t verify[EFUSE_AUTOTEST_SIZE];
    uint8_t expect[EFUSE_AUTOTEST_SIZE];
    int i, ret;
    HAL_StatusTypeDef hi;

    if (argc >= 3)
    {
        const char *hs = argv[2];
        if (strlen(hs) != (size_t)(EFUSE_AUTOTEST_SIZE * 2))
        {
            rt_kprintf("EFUSE_TEST_RESULT FAIL usage (need %d hex chars)\n", EFUSE_AUTOTEST_SIZE * 2);
            return;
        }
        for (i = 0; i < EFUSE_AUTOTEST_SIZE; i++)
        {
            int v = parse_hex_byte(&hs[i * 2]);
            if (v < 0)
            {
                rt_kprintf("EFUSE_TEST_RESULT FAIL bad_hex\n");
                return;
            }
            pat[i] = (uint8_t)v;
        }
    }

    hi = HAL_EFUSE_Init();
    if (hi != HAL_OK)
    {
        rt_kprintf("EFUSE_TEST_RESULT FAIL init %d\n", (int)hi);
        return;
    }

    ret = HAL_EFUSE_Read((uint16_t)EFUSE_AUTOTEST_BIT_OFFSET, oldb, EFUSE_AUTOTEST_SIZE);
    if (ret != EFUSE_AUTOTEST_SIZE)
    {
        rt_kprintf("EFUSE_TEST_RESULT FAIL read_old %d\n", ret);
        return;
    }

    /* OTP: only 0->1; program (old | pat), never require clearing bits. */
    for (i = 0; i < EFUSE_AUTOTEST_SIZE; i++)
        expect[i] = oldb[i] | pat[i];

    if (memcmp(oldb, expect, EFUSE_AUTOTEST_SIZE) == 0)
    {
        rt_kprintf("EFUSE_TEST_RESULT PASS (already has pattern bits)\n");
        return;
    }

    rt_kprintf("EFUSE_TEST write %d bytes at bit %d (target OR old), up to 6 tries...\n",
               EFUSE_AUTOTEST_SIZE, EFUSE_AUTOTEST_BIT_OFFSET);
    {
        uint32_t saved_pa30;
        int attempt;

        for (attempt = 1; attempt <= 6; attempt++)
        {
            efuse_pa30_enable(&saved_pa30);
            ret = HAL_EFUSE_Write((uint16_t)EFUSE_AUTOTEST_BIT_OFFSET, expect, EFUSE_AUTOTEST_SIZE);
            efuse_pa30_restore(saved_pa30);

            if (ret != EFUSE_AUTOTEST_SIZE)
            {
                rt_kprintf("EFUSE_TEST_RESULT FAIL write_ret %d (try %d)\n", ret, attempt);
                return;
            }

            hi = HAL_EFUSE_Init();
            if (hi != HAL_OK)
            {
                rt_kprintf("EFUSE_TEST_RESULT FAIL reinit %d\n", (int)hi);
                return;
            }

            ret = HAL_EFUSE_Read((uint16_t)EFUSE_AUTOTEST_BIT_OFFSET, verify, EFUSE_AUTOTEST_SIZE);
            if (ret != EFUSE_AUTOTEST_SIZE)
            {
                rt_kprintf("EFUSE_TEST_RESULT FAIL read_verify %d\n", ret);
                return;
            }

            if (memcmp(verify, expect, EFUSE_AUTOTEST_SIZE) == 0)
            {
                rt_kprintf("EFUSE_TEST_RESULT PASS (try %d)\n", attempt);
                return;
            }

            rt_kprintf("  try %d: read ", attempt);
            for (i = 0; i < EFUSE_AUTOTEST_SIZE; i++)
                rt_kprintf("%02X", verify[i]);
            rt_kprintf(" expect ");
            for (i = 0; i < EFUSE_AUTOTEST_SIZE; i++)
                rt_kprintf("%02X", expect[i]);
            rt_kprintf("\n");

            if (attempt < 6)
                rt_thread_mdelay(50);
        }

        rt_kprintf("EFUSE_TEST_RESULT FAIL mismatch\n");
    }
}

static int cmd_efuse(int argc, char *argv[])
{
    if (argc < 2)
        goto usage;

    if (strcmp(argv[1], "dump") == 0)
    {
        cmd_efuse_dump();
    }
    else if (strcmp(argv[1], "info") == 0)
    {
        cmd_efuse_info();
    }
    else if (strcmp(argv[1], "read") == 0)
    {
        if (argc < 4)
        {
            rt_kprintf("Usage: efuse read <bit_offset> <size_bytes>\n");
            return -1;
        }
        cmd_efuse_read(atoi(argv[2]), atoi(argv[3]));
    }
    else if (strcmp(argv[1], "write") == 0)
    {
        if (argc < 4)
        {
            rt_kprintf("Usage: efuse write <bit_offset> <hex_data>\n");
            rt_kprintf("  hex_data: even-length hex string, e.g. 01020304\n");
            return -1;
        }
        cmd_efuse_write(atoi(argv[2]), argv[3]);
    }
    else if (strcmp(argv[1], "test") == 0)
    {
        cmd_efuse_test(argc, argv);
    }
    else
    {
        goto usage;
    }
    return 0;

usage:
    rt_kprintf("eFuse utility (SF32LB52x: %d banks x %d bytes)\n", EFUSE_BANK_NUM, EFUSE_BANK_BYTES);
    rt_kprintf("  efuse dump                       - Dump all banks\n");
    rt_kprintf("  efuse info                       - Show known fields (UID/SIG_HASH/SECURE/ROOT_KEY)\n");
    rt_kprintf("  efuse read <bit_offset> <size>   - Read <size> bytes from <bit_offset>\n");
    rt_kprintf("  efuse write <bit_offset> <hex>   - Write hex bytes to <bit_offset> (IRREVERSIBLE!)\n");
    rt_kprintf("  efuse test [8_hex_chars]         - OTP HW test at bank2 reserved bit %d (OR semantics)\n",
               EFUSE_AUTOTEST_BIT_OFFSET);
    rt_kprintf("                                     Prints EFUSE_TEST_RESULT PASS|FAIL for automation.\n");
    rt_kprintf("\nLayout:\n");
    rt_kprintf("  Bank 0 (bit   0-255, byte  0-31):  UID[0:15] SIG_HASH[16:23] SECURE[24:27] rsvd[28:31]\n");
    rt_kprintf("  Bank 1 (bit 256-511, byte 32-63):  reserved\n");
    rt_kprintf("  Bank 2 (bit 512-767, byte 64-95):  reserved\n");
    rt_kprintf("  Bank 3 (bit 768-1023,byte 96-127): ROOT_KEY[0:31]\n");
    rt_kprintf("\nConstraints: bit_offset must be 32-bit aligned, size must be multiple of 4,\n");
    rt_kprintf("             cannot cross bank boundary. Write only sets bits (0->1).\n");
    rt_kprintf("\nBANK3 (ROOT_KEY): CPU cannot read back; efuse info may show zeros. Do not use verify.\n");
    rt_kprintf("Test hardware write+read on BANK0 SIG_HASH (bit 128) before burning ROOT_KEY.\n");
    return 0;
}
MSH_CMD_EXPORT_ALIAS(cmd_efuse, efuse, eFuse read / write / dump utility);
