#include <rtthread.h>
#include <string.h>
#include <stdlib.h>
#include "bf0_hal.h"

#ifdef SF32LB52X
extern volatile uint32_t hal_efuse_dbg_sr_before;
extern volatile uint32_t hal_efuse_dbg_anacr;
extern volatile uint32_t hal_efuse_dbg_anau;
extern volatile uint32_t hal_efuse_dbg_timr;
extern volatile uint32_t hal_efuse_dbg_cr_before;
extern volatile uint32_t hal_efuse_dbg_ready;
extern volatile uint32_t hal_efuse_dbg_timeout;
#endif

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

static void efuse_pwr_route_enable(uint32_t *saved_pa30)
{
#ifdef SF32LB52X
    *saved_pa30 = hwp_pinmux1->PAD_PA30;
    hwp_pinmux1->PAD_PA30 =
        (*saved_pa30 & ~HPSYS_PINMUX_PAD_PA30_FSEL_Msk) |
        (2u << HPSYS_PINMUX_PAD_PA30_FSEL_Pos); /* FSEL=2 => EFUSE_PWR */
    HAL_Delay_us(10);
#else
    *saved_pa30 = 0;
#endif
}

static void efuse_pwr_route_restore(uint32_t saved_pa30)
{
#ifdef SF32LB52X
    hwp_pinmux1->PAD_PA30 = saved_pa30;
#else
    (void)saved_pa30;
#endif
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
    rt_kprintf("  (bank = bit_offset / 256;  each bank = 256 bits = 32 bytes)\n");

    /* UID / SIG_HASH / SECURE_FLAG: all in bank 0 */
    if (efuse_read_bank(0, buf) == 0)
    {
        rt_kprintf("UID         (bank 0, bit %3d, %2d bytes): ", FIELD_UID_BIT, FIELD_UID_SIZE);
        for (i = 0; i < FIELD_UID_SIZE; i++)
            rt_kprintf("%02X", buf[i]);
        rt_kprintf("\n");

        rt_kprintf("SIG_HASH    (bank 0, bit %3d,  %d bytes): ", FIELD_SIGHASH_BIT, FIELD_SIGHASH_SIZE);
        for (i = 16; i < 16 + FIELD_SIGHASH_SIZE; i++)
            rt_kprintf("%02X", buf[i]);
        rt_kprintf("\n");

        rt_kprintf("SECURE_FLAG (bank 0, bit %3d,  %d bytes): ", FIELD_SECURE_BIT, FIELD_SECURE_SIZE);
        for (i = 24; i < 24 + FIELD_SECURE_SIZE; i++)
            rt_kprintf("%02X", buf[i]);
        rt_kprintf("  => secure_enabled = 0x%02X\n", buf[24]);
    }

    /* ROOT_KEY: bank 3 (bit 768-1023) — non-readable to CPU on SF32LB52X by design */
    if (efuse_read_bank(3, buf) == 0)
    {
        rt_kprintf("ROOT_KEY    (bank 3, bit %3d, %2d bytes): ", FIELD_ROOT_BIT, FIELD_ROOT_SIZE);
        for (i = 0; i < FIELD_ROOT_SIZE; i++)
            rt_kprintf("%02X", buf[i]);
        rt_kprintf("\n");
        rt_kprintf("            (note: if all zeros and ROOT_KEY was written, hardware may block reads after SECURE_FLAG is set.)\n");
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
        rt_kprintf("Note: BANK3 is readable; zeros here mean key was not programmed yet.\n");

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

static void cmd_efuse_write(int bit_offset, const char *hex_str)
{
    uint8_t buf[EFUSE_BANK_BYTES];
    int hex_len, data_len, i, ret;
    uint32_t saved_pa30 = 0;
    int chunk;
    int total_ok = 1;

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
    rt_kprintf("  bit_offset=%d (bank %d, byte %d), %d bytes in %d x 4-byte chunks\n",
               bit_offset, bit_offset / 256, (bit_offset / 8) % EFUSE_BANK_BYTES,
               data_len, data_len / 4);
    rt_kprintf("  data = ");
    for (i = 0; i < data_len; i++) rt_kprintf("%02X", buf[i]);
    rt_kprintf("\nProceeding with write...\n");

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

    efuse_pwr_route_enable(&saved_pa30);
#ifdef SF32LB52X
    rt_kprintf("  PAD_PA30 switched to EFUSE_PWR, PAD_PA30=0x%08x\n",
               (unsigned)hwp_pinmux1->PAD_PA30);
#endif

    /* Write in 4-byte (32-bit) chunks. Each HAL_EFUSE_Write call is limited to 4 bytes so
     * only 32 cells are active per programming pulse, keeping LDO load minimal. */
    for (chunk = 0; chunk < data_len; chunk += 4)
    {
        uint8_t *chunk_target = buf + chunk;
        int chunk_offset = bit_offset + chunk * 8;

        rt_kprintf("\n[Chunk %d/%d] bit=%d data=%02X%02X%02X%02X\n",
                   chunk / 4 + 1, data_len / 4, chunk_offset,
                   chunk_target[0], chunk_target[1], chunk_target[2], chunk_target[3]);

        {
            /* All banks (including bank3): iterative retry with read-back verify (max 50 tries).
             * Per the user manual section 13.3.4.2, bank3 IS readable unless bank0[253:252]=0b11
             * is set (masking only happens after SECURE_FLAG is programmed). */
            uint8_t current[4], missing[4], prev_missing[4];
            int attempt, ok = 0, stall_count = 0;

            ret = HAL_EFUSE_Read((uint16_t)chunk_offset, current, 4);
            if (ret != 4) memset(current, 0, 4);
            rt_kprintf("  pre-read: %02X%02X%02X%02X\n",
                       current[0], current[1], current[2], current[3]);
            memset(prev_missing, 0xff, 4);

            for (attempt = 1; attempt <= 200; attempt++)
            {
                int all_done = 1;
                for (i = 0; i < 4; i++)
                {
                    missing[i] = chunk_target[i] & ~current[i];
                    if (missing[i]) all_done = 0;
                }
                if (all_done)
                {
                    rt_kprintf("  all bits set before try %d!\n", attempt);
                    ok = 1;
                    break;
                }

                /* Detect stall: if missing bits unchanged, count stall and apply a
                 * longer cool-down every 10 consecutive non-progressing attempts.
                 * This gives hard fuse cells a thermal recovery break. */
                if (memcmp(missing, prev_missing, 4) == 0)
                    stall_count++;
                else
                    stall_count = 0;
                memcpy(prev_missing, missing, 4);

                if (stall_count > 0 && (stall_count % 10) == 0)
                {
                    rt_kprintf("  [stall %d, cooling 500ms...]\n", stall_count);
                    rt_thread_mdelay(500);
                }

                rt_kprintf("  try %d missing=%02X%02X%02X%02X",
                           attempt, missing[0], missing[1], missing[2], missing[3]);

                __HAL_SYSCFG_SET_SECURITY();
                ret = HAL_EFUSE_Write((uint16_t)chunk_offset, missing, 4);
                __HAL_SYSCFG_CLEAR_SECURITY();

                /* Expected: ANACR=0x71f (LDO_EN|VREF=7|LDO_MODE|LDO_DC_TR=7) */
                rt_kprintf(" ANACR=0x%x ready=%u\n",
                           (unsigned)hal_efuse_dbg_anacr,
                           (unsigned)hal_efuse_dbg_ready);

                rt_thread_mdelay(50);
                ret = HAL_EFUSE_Read((uint16_t)chunk_offset, current, 4);
                if (ret != 4) continue;

                rt_kprintf("  after try %d: %02X%02X%02X%02X\n",
                           attempt, current[0], current[1], current[2], current[3]);

                int satisfied = 1;
                for (i = 0; i < 4; i++)
                {
                    if ((current[i] & chunk_target[i]) != chunk_target[i])
                    { satisfied = 0; break; }
                }
                if (satisfied) { rt_kprintf("  chunk PASSED on try %d\n", attempt); ok = 1; break; }
                rt_thread_mdelay(20);
            }

            if (!ok)
            {
                rt_kprintf("  chunk FAILED! final=%02X%02X%02X%02X still_missing=%02X%02X%02X%02X\n",
                           current[0], current[1], current[2], current[3],
                           chunk_target[0] & ~current[0], chunk_target[1] & ~current[1],
                           chunk_target[2] & ~current[2], chunk_target[3] & ~current[3]);
                total_ok = 0;
            }
        }
    }

    efuse_pwr_route_restore(saved_pa30);

    rt_kprintf("\n");
    if (total_ok)
        rt_kprintf("All chunks verified OK.\n");
    else
        rt_kprintf("WARNING: one or more chunks failed. Check output above.\n");
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
        uint32_t saved_pa30 = 0;
        int attempt;
        efuse_pwr_route_enable(&saved_pa30);

        for (attempt = 1; attempt <= 6; attempt++)
        {
            __HAL_SYSCFG_SET_SECURITY();
            ret = HAL_EFUSE_Write((uint16_t)EFUSE_AUTOTEST_BIT_OFFSET, expect, EFUSE_AUTOTEST_SIZE);
            __HAL_SYSCFG_CLEAR_SECURITY();

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

        efuse_pwr_route_restore(saved_pa30);
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
