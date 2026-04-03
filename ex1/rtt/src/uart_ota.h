/*
 * UART OTA: A/B 安全升级，应用运行时向非活跃 Slot 写入固件镜像。
 *
 * Flash 布局 (ptab):
 *   0x12000000  32KB   ftab_A (FLASH_TABLE)
 *   0x12008000  32KB   ftab_B (gap before bootloader)
 *   0x12010000  64KB   Bootloader
 *   0x12020000  4MB    Slot A (HCPU_FLASH_CODE, XIP)
 *   0x12420000  4MB    Slot B
 *   0x12820000         DFU / KVDB / FS ...
 */
#ifndef UART_OTA_H
#define UART_OTA_H

#include <stdint.h>
#include <rtdef.h>

#define UART_OTA_SLOT_A_BASE    0x12020000UL
#define UART_OTA_SLOT_B_BASE    0x12420000UL
#define UART_OTA_SLOT_SIZE      0x00400000UL /* 4 MiB per bank */
#define UART_OTA_META_SECTOR    0x00001000UL /* B 区最后 4KB 存元数据，镜像最大 = SLOT_SIZE - META */
#define UART_OTA_MAX_IMAGE_SIZE (UART_OTA_SLOT_SIZE - UART_OTA_META_SECTOR)

#define UART_OTA_MAGIC_META     0x314F545AU /* "OT4" little */

#define UART_OTA_FTAB_A_BASE    0x12000000UL
#define UART_OTA_FTAB_B_BASE    0x12008000UL
#define UART_OTA_FTAB_SIZE      0x00008000UL /* 32 KiB per ftab */

#define UART_OTA_AB_PERSIST_MAGIC  0x41425053UL /* "ABPS" */
#define UART_OTA_AB_PERSIST_ADDR   0x12880000UL /* DFU_DOWNLOAD_REGION 首部，独立于 ftab/image */

#pragma pack(push, 1)
struct ab_persist
{
    uint32_t magic;
    uint32_t active_slot;   /* 0 = Slot A, 1 = Slot B */
};
#pragma pack(pop)

/*
 * A/B boot state in RTC backup registers.
 * - ACTIVE: persistent current slot selection
 * - TRY: one-shot trial boot target (bootloader clears before jump)
 * - COMMIT: set by bootloader before trial jump, consumed by app after successful startup
 */
#define UART_OTA_BOOT_ACTIVE_IDX    9
#define UART_OTA_BOOT_TRY_IDX       8
#define UART_OTA_BOOT_COMMIT_IDX    7

#define UART_OTA_BOOT_ACTIVE_A      0x41435441UL /* "ACTA" */
#define UART_OTA_BOOT_ACTIVE_B      0x41435442UL /* "ACTB" */
#define UART_OTA_BOOT_TRY_A         0x54525941UL /* "TRYA" */
#define UART_OTA_BOOT_TRY_B         0x54525942UL /* "TRYB" */
#define UART_OTA_BOOT_COMMIT_A      0x434D5441UL /* "CMTA" */
#define UART_OTA_BOOT_COMMIT_B      0x434D5442UL /* "CMTB" */

#pragma pack(push, 1)
struct uart_ota_meta
{
    uint32_t magic;
    uint32_t version;       /* 1 */
    uint32_t image_size;    /* bytes in B excluding meta sector */
    uint32_t image_crc32;   /* IEEE poly on image bytes */
    uint32_t flags;         /* bit0: valid */
};
#pragma pack(pop)

void uart_ota_init(void);

/* 进入/退出 OTA：会替换控制台 UART 的 RX 回调，期间不要使用 msh */
int uart_ota_mode_enter(void);
void uart_ota_mode_exit(void);
rt_bool_t uart_ota_mode_active(void);

#endif
