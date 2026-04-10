/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2018-11-06     zylx         first version
 */

#include <rtconfig.h>
#include <board.h>
#include <string.h>
#include "stdio.h"
#include "register.h"
#include "../dfu/dfu.h"
#include "../dfu_pan/dfu_pan_macro.h"
#include "boot_flash.h"
#include "secboot.h"
#ifdef PKG_SIFLI_MBEDTLS_BOOT
#include "mbedtls/sha256.h"
#endif

/* A/B ftab: ftab_B lives in the 32 KB gap (0x12008000) before the bootloader */
#define FTAB_A_ADDR     0x12000000UL
#define FTAB_B_ADDR     0x12008000UL

#define AB_PERSIST_MAGIC    0x41425053UL /* "ABPS" */
#define AB_PERSIST_ADDR     0x1277F000UL /* keep in sync with uart_ota.h */
#define AB_PERSIST_SECTOR   0x1000UL

#pragma pack(push, 1)
/* Must match ex1/rtt/src/uart_ota.h struct ab_persist */
struct ab_persist_bl
{
    uint32_t magic;
    uint32_t active_slot;
    uint32_t pending_try;
    uint32_t commit;
};
#pragma pack(pop)

static uint32_t ab_persist_addr_runtime(void)
{
    uint32_t end;

    if (boot_handle == NULL || boot_handle->isNand != 0)
        return 0;
    end = boot_handle->base + boot_handle->size;
    if (AB_PERSIST_ADDR >= boot_handle->base && (AB_PERSIST_ADDR + sizeof(struct ab_persist_bl)) <= end)
        return AB_PERSIST_ADDR;
    if (end >= (boot_handle->base + AB_PERSIST_SECTOR))
        return end - AB_PERSIST_SECTOR;
    return 0;
}

static int bl_ab_persist_save(const struct ab_persist_bl *m)
{
    uint32_t addr = ab_persist_addr_runtime();
    if (addr == 0)
        return -1;
    if (g_flash_erase(addr, AB_PERSIST_SECTOR) != 0)
        return -1;
    if (g_flash_write(addr, (const int8_t *)m, sizeof(*m)) != (int)sizeof(*m))
        return -1;
    return 0;
}

static int get_cold_boot_slot(void)
{
    struct ab_persist_bl m;
    uint32_t addr = ab_persist_addr_runtime();
    if (addr == 0)
        return 0;
    g_flash_read(addr, (const int8_t *)&m, sizeof(m));
    if (m.magic == AB_PERSIST_MAGIC && m.active_slot == 1)
        return 1;
    return 0;
}

int board_boot_src;
struct sec_configuration sec_config_cache;

typedef void (*ram_hook_handler)(void);
void boot_ram(void)
{
    volatile ram_hook_handler hook = (volatile ram_hook_handler)hwp_hpsys_aon->RESERVE0;
    if (hook)
        hook();
}


//#define BOOT_TEST
#ifdef BOOT_TEST
void boot_test(void)
{
    uint32_t delay = (100 << BOOT_PU_Delay_Pos) | (200 << BOOT_PD_Delay_Pos);
    if (HAL_Get_backup(RTC_BACKUP_BOOTOPT + 1) == 0)
    {
        HAL_Set_backup(RTC_BACKUP_BOOTOPT, delay);
        HAL_Set_backup(RTC_BACKUP_BOOTOPT + 1, 1);
        HAL_PMU_Reboot();
    }
    else
    {
        boot_uart_tx(hwp_usart1, (uint8_t *)"E", 1);
        __asm("B .");
    }
}
#else
#define boot_test()
#endif

/**************************Efuse**************************************************/
#define boot_efuse_init_stage1(void) \
{ \
    hwp_efusec->TIMR = 0x2D08F; \
    /* Read bank0 */ \
    sifli_hw_efuse_read_bank(0); \
}

#define boot_efuse_init_stage2(void) \
{ \
    /* Read bank3 */ \
    sifli_hw_efuse_read_bank(3); \
}


/************************Boot *****************************************/

/* A/B OTA boot policy (Flash ab_persist @ AB_PERSIST_ADDR, no RTC BKP) */
#define BOOT_SLOT_A_XIP     0x12020000UL
#define BOOT_SLOT_B_PHYS    0x12420000UL
#define BOOT_SLOT_SIZE      0x003C0000UL

#define BOOT_TRY_A          0x54525941UL /* "TRYA" */
#define BOOT_TRY_B          0x54525942UL /* "TRYB" */
#define BOOT_COMMIT_A       0x434D5441UL /* "CMTA" */
#define BOOT_COMMIT_B       0x434D5442UL /* "CMTB" */
void dfu_boot_img_in_flash(int flashid);

void run_img(uint32_t dest)
{
    __asm("LDR SP, [%0]" :: "r"(dest));
    __asm("LDR PC, [%0, #4]" :: "r"(dest));
}

static int try_boot_from_slot(int slot_is_b)
{
    uint32_t ftab_addr = slot_is_b ? FTAB_B_ADDR : FTAB_A_ADDR;
    boot_uart_tx(hwp_usart1, (uint8_t *)(slot_is_b ? "TS:B\r\n" : "TS:A\r\n"), 6);

    g_flash_read(ftab_addr, (const int8_t *)&sec_config_cache,
                 sizeof(sec_config_cache));
    if (sec_config_cache.magic != SEC_CONFIG_MAGIC)
    {
        boot_uart_tx(hwp_usart1, (uint8_t *)"TS:M\r\n", 6);
        return -1;
    }

    if (sec_config_cache.running_imgs[CORE_HCPU]
            == (struct image_header_enc *)FLASH_UNINIT_32)
    {
        boot_uart_tx(hwp_usart1, (uint8_t *)"TS:I\r\n", 6);
        return -1;
    }

    int flash_id = ((uint32_t)sec_config_cache.running_imgs[CORE_HCPU]
                    - g_config_addr - 0x1000)
                   / sizeof(struct image_header_enc) + DFU_FLASH_IMG_LCPU;

    if (slot_is_b)
        sec_config_cache.ftab[flash_id].base = BOOT_SLOT_B_PHYS;

    boot_uart_tx(hwp_usart1, (uint8_t *)"TS:J\r\n", 6);
    dfu_boot_img_in_flash(flash_id);

    HAL_FLASH_AES_CFG(boot_handle, 0);
    SCB_CleanInvalidateDCache();
    boot_uart_tx(hwp_usart1, (uint8_t *)"TS:X\r\n", 6);
    return -1;
}

uint8_t is_addr_in_nor(uint32_t addr)
{
    if (boot_handle && boot_handle->isNand == 0 &&
            addr >= boot_handle->base && addr < boot_handle->base + boot_handle->size)
        return 1;
    else
        return 0;
}

static int secboot_verify_pubkey_sw(uint8_t *pubkey, uint32_t key_size)
{
    uint8_t efuse_hash[DFU_SIG_HASH_SIZE] = {0};
    uint8_t computed[32];
    int r;

    r = sifli_hw_efuse_read(EFUSE_ID_SIG_HASH, efuse_hash, DFU_SIG_HASH_SIZE);
    if (r != DFU_SIG_HASH_SIZE)
        return -1;

#ifdef PKG_SIFLI_MBEDTLS_BOOT
    mbedtls_sha256(pubkey, key_size, computed, 0);
#else
    sifli_hash_calculate(pubkey, key_size, computed, HASH_ALGO_SHA256);
#endif

    if (memcmp(computed, efuse_hash, DFU_SIG_HASH_SIZE))
        return -1;

    return 0;
}

static int secboot_is_enabled(void)
{
    uint8_t pattern = 0;
    int r = sifli_hw_efuse_read(EFUSE_ID_SECURE_ENABLED, &pattern, DFU_SECURE_SIZE);

    if (r != DFU_SECURE_SIZE)
        return 0;

    return (pattern != 0);
}

static int secboot_verify_before_run(uint32_t dest, struct image_header_enc *img_hdr)
{
    if (!secboot_is_enabled())
    {
        boot_uart_tx(hwp_usart1, (uint8_t *)"SFBLsec off\r\n", 13);
        return 0;
    }

    if (secboot_verify_pubkey_sw(sec_config_cache.sig_pub_key, DFU_SIG_KEY_SIZE))
    {
        boot_uart_tx(hwp_usart1, (uint8_t *)"SFBLpubkey fail\r\n", 17);
        return -1;
    }

    if (sifli_img_sig_hash_verify(img_hdr->sig, sec_config_cache.sig_pub_key,
                                  (uint8_t *)dest, img_hdr->length))
    {
        boot_uart_tx(hwp_usart1, (uint8_t *)"SFBLsig fail\r\n", 14);
        return -1;
    }

    return 0;
}

void dfu_boot_img_in_flash(int flashid)
{
    uint32_t src = sec_config_cache.ftab[flashid].base;
    uint32_t dest = sec_config_cache.ftab[flashid].xip_base;
    int coreid = DFU_FLASH_IMG_IDX(flashid);
    struct image_header_enc *img_hdr = &(sec_config_cache.imgs[coreid]);
    struct sec_configuration *sec_config = &sec_config_cache;

    if (img_hdr->flags & DFU_FLAG_ENC)
    {
        uint32_t is_flash = 1;

        if (coreid < 2 * CORE_MAX)
        {
            coreid %= CORE_MAX;
            boot_efuse_init_stage2();
            if (coreid == CORE_HCPU || coreid == CORE_BL || coreid == CORE_LCPU)
            {
                ALIGN(4)
                static uint8_t dfu_key[DFU_KEY_SIZE];
                ALIGN(4)
                static uint8_t dfu_key1[DFU_KEY_SIZE];
                if (is_addr_in_nor(dest))
                {
                    memcpy(dfu_key, img_hdr->key, sizeof(dfu_key));
                    sifli_hw_init_xip_key(dfu_key);

                    HAL_FLASH_NONCE_CFG(boot_handle, dest, dest + img_hdr->length, dfu_get_counter(0));
                    if (is_flash)
                        HAL_FLASH_ALIAS_CFG(boot_handle, dest, img_hdr->length, src - dest);
                    HAL_FLASH_AES_CFG(boot_handle, 1);
                    SCB_CleanInvalidateDCache();
                }
                else
                {
                    memcpy(dfu_key, img_hdr->key, sizeof(dfu_key));
                    sifli_hw_dec_key(dfu_key, dfu_key1, sizeof(dfu_key1));
                    g_flash_read(src, (const int8_t *)dest, img_hdr->length);
                    sifli_hw_dec(dfu_key1, (uint8_t *)dest, (uint8_t *)dest, img_hdr->length, 0);
                }
                {
                    static const char hx[] = "0123456789ABCDEF";
                    char dbuf[60];
                    int dp;
                    uint8_t *dd = (uint8_t *)dest;
                    uint32_t dlen = img_hdr->length;

                    dp = 0;
                    dbuf[dp++]='D'; dbuf[dp++]='@';
                    for (int s=28;s>=0;s-=4) dbuf[dp++]=hx[(dest>>s)&0xF];
                    dbuf[dp++]=' '; dbuf[dp++]='S'; dbuf[dp++]='@';
                    for (int s=28;s>=0;s-=4) dbuf[dp++]=hx[(src>>s)&0xF];
                    dbuf[dp++]='\r'; dbuf[dp++]='\n';
                    boot_uart_tx((void*)hwp_usart1,(uint8_t*)dbuf,dp);

                    dp = 0;
                    dbuf[dp++]='B'; dbuf[dp++]='0'; dbuf[dp++]=':';
                    for (int i=0;i<16;i++){dbuf[dp++]=hx[dd[i]>>4];dbuf[dp++]=hx[dd[i]&0xF];}
                    dbuf[dp++]='\r'; dbuf[dp++]='\n';
                    boot_uart_tx((void*)hwp_usart1,(uint8_t*)dbuf,dp);

                    dp = 0;
                    dbuf[dp++]='B'; dbuf[dp++]='5'; dbuf[dp++]=':';
                    for (int i=0;i<16;i++){dbuf[dp++]=hx[dd[512+i]>>4];dbuf[dp++]=hx[dd[512+i]&0xF];}
                    dbuf[dp++]='\r'; dbuf[dp++]='\n';
                    boot_uart_tx((void*)hwp_usart1,(uint8_t*)dbuf,dp);

                    dp = 0;
                    dbuf[dp++]='B'; dbuf[dp++]='E'; dbuf[dp++]=':';
                    for (int i=0;i<16;i++){dbuf[dp++]=hx[dd[dlen-16+i]>>4];dbuf[dp++]=hx[dd[dlen-16+i]&0xF];}
                    dbuf[dp++]='\r'; dbuf[dp++]='\n';
                    boot_uart_tx((void*)hwp_usart1,(uint8_t*)dbuf,dp);
                }
                if (secboot_verify_before_run(dest, img_hdr) == 0)
                    run_img(dest);
            }
        }
    }
    if (coreid < 2 * CORE_MAX)
    {
        coreid %= CORE_MAX;
        if (coreid == CORE_HCPU || coreid == CORE_BL || coreid == CORE_LCPU)
        {
            if (is_addr_in_nor(dest))
                HAL_FLASH_ALIAS_CFG(boot_handle, dest, img_hdr->length, src - dest);
            else if (src != dest)
                g_flash_read(src, (const int8_t *)dest, img_hdr->length);

            if (secboot_verify_before_run(dest, img_hdr) == 0)
                run_img(dest);
        }
    }
}



void boot_images_help()
{
#ifdef CFG_BOOTROM
    if (sec_config_cache.magic == SEC_CONFIG_MAGIC
            && sec_config_cache.running_imgs[CORE_BL]
               != (struct image_header_enc *)FLASH_UNINIT_32)
    {
        int flash_id = ((uint32_t)sec_config_cache.running_imgs[CORE_BL]
                        - g_config_addr - 0x1000)
                       / sizeof(struct image_header_enc)
                       + DFU_FLASH_IMG_LCPU;
        dfu_boot_img_in_flash(flash_id);
    }
#else
    struct ab_persist_bl ab;
    int first_is_b;
    uint32_t ab_addr = ab_persist_addr_runtime();
    boot_uart_tx(hwp_usart1, (uint8_t *)"BH:0\r\n", 6);

    if (ab_addr != 0)
    {
        g_flash_read(ab_addr, (const int8_t *)&ab, sizeof(ab));
    }
    else
    {
        memset(&ab, 0, sizeof(ab));
        boot_uart_tx(hwp_usart1, (uint8_t *)"BH:W\r\n", 6); /* no valid ab_persist address */
    }

    if (ab.magic != AB_PERSIST_MAGIC)
    {
        first_is_b = get_cold_boot_slot();
    }
    else
    {
        uint32_t pt = ab.pending_try;
        if (pt != BOOT_TRY_A && pt != BOOT_TRY_B)
            pt = 0;

        if (pt == BOOT_TRY_B)
        {
            first_is_b = 1;
        }
        else if (pt == BOOT_TRY_A)
        {
            first_is_b = 0;
        }
        else if (ab.active_slot == 1)
            first_is_b = 1;
        else
            first_is_b = 0;
    }

    boot_uart_tx(hwp_usart1, (uint8_t *)"BH:P\r\n", 6);
    boot_uart_tx(hwp_usart1, (uint8_t *)"BH:R0\r\n", 7);
    board_init_psram();
    boot_uart_tx(hwp_usart1, (uint8_t *)"BH:R1\r\n", 7);

    boot_uart_tx(hwp_usart1, (uint8_t *)"BH:T0\r\n", 7);
    try_boot_from_slot(first_is_b);

    boot_uart_tx(hwp_usart1, (uint8_t *)"BH:T1\r\n", 7);
    try_boot_from_slot(!first_is_b);
    boot_uart_tx(hwp_usart1, (uint8_t *)"BH:E\r\n", 6);
#endif
}

void hw_preinit0(void)
{
    if (__HAL_SYSCFG_GET_REVID() < HAL_CHIP_REV_ID_A4)
    {
        /* lower power on threshold and set VBAT_LDO output voltage to default 3.3V*/
        MODIFY_REG(hwp_pmuc->AON_LDO, PMUC_AON_LDO_VBAT_POR_TH_Msk | PMUC_AON_LDO_VBAT_LDO_SET_VOUT_Msk,
                   MAKE_REG_VAL(0, PMUC_AON_LDO_VBAT_POR_TH_Msk, PMUC_AON_LDO_VBAT_POR_TH_Pos)
                   | MAKE_REG_VAL(6, PMUC_AON_LDO_VBAT_LDO_SET_VOUT_Msk, PMUC_AON_LDO_VBAT_LDO_SET_VOUT_Pos));

        /* auto power down if VCC is low */
        hwp_pmuc->WER |= PMUC_WER_LOWBAT;
    }

    HAL_Delay_us(0);

    // 1. Read efuse bank0 first to take efuse effect.
    boot_efuse_init_stage1();

    // 2. If ram hook existed, just jump to ram.
    boot_ram();
}

/**************************main**************************************/

#if defined(__CC_ARM) || defined(__CLANG_ARM)
    int main(void)
#elif defined(__ICCARM__)
    int __low_level_init(void)
#elif defined(__GNUC__)
    int entry(void)
#endif
{
    /* Diagnostic: confirm 2nd-stage bootloader reached (UART still configured by BootROM) */
    boot_uart_tx(hwp_usart1, (uint8_t *)"BL:S\r\n", 6);

    HAL_Delay_us(0);

    if (__HAL_SYSCFG_GET_REVID() >= HAL_CHIP_REV_ID_A4)
    {
        // 3. Power on flash.
        board_flash_power_on();

        // 4. Check boot mode.
        HAL_MspInit();

        // 5. Boot images
#ifdef CFG_BOOTROM
        if (hwp_hpsys_cfg->BMR == 0)
#endif
        {
            // 6. Read boot options
            board_boot_src = board_boot_from();
            {
                uint8_t dbuf[4] = {'B', 'S', ':', '0' + (uint8_t)(board_boot_src & 0xF)};
                boot_uart_tx(hwp_usart1, dbuf, 4);
                boot_uart_tx(hwp_usart1, (uint8_t *)"\r\n", 2);
            }

            /* init AES_ACC as normal mode */
            __HAL_SYSCFG_CLEAR_SECURITY();
            dfu_flash_init();
            boot_uart_tx(hwp_usart1, (uint8_t *)"BL:F\r\n", 6); /* flash init done */
            boot_images_help();
        }
    }
    else
    {
        // 3. Read boot options
        board_boot_src = board_boot_from();
        {
            uint8_t dbuf[4] = {'B', 'S', ':', '0' + (uint8_t)(board_boot_src & 0xF)};
            boot_uart_tx(hwp_usart1, dbuf, 4);
            boot_uart_tx(hwp_usart1, (uint8_t *)"\r\n", 2);
        }

        // 4. Power on flash.
        board_flash_power_on();

        // 5. Check boot mode.
        HAL_MspInit();

        // 6. Boot images
#ifdef CFG_BOOTROM
        if (hwp_hpsys_cfg->BMR == 0)
#endif
        {
            /* init AES_ACC as normal mode */
            __HAL_SYSCFG_CLEAR_SECURITY();
            dfu_flash_init();
            boot_uart_tx(hwp_usart1, (uint8_t *)"BL:F\r\n", 6); /* flash init done */
            boot_images_help();
        }
    }

    while (1)
        ;

    return HAL_OK;
}