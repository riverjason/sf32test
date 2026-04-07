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
/* 固定到 DFU 区前半段扇区，避开高地址映射不稳定和下载缓冲尾部踩踏 */
#define UART_OTA_AB_PERSIST_ADDR   0x1277F000UL

/*
 * A/B state in Flash @ UART_OTA_AB_PERSIST_ADDR (one sector, 4 KiB erase).
 * Bootloader and app must keep this layout in sync (see butterflmicro/board/main.c).
 *
 * - active_slot: confirmed boot bank (0=A, 1=B).
 * - pending_try: app sets TRYA/TRYB before reboot; bootloader clears and sets commit.
 * - commit: bootloader sets CMTA/CMTB for the trial jump; app clears after confirm.
 */
#pragma pack(push, 1)
struct ab_persist
{
    uint32_t magic;
    uint32_t active_slot;   /* 0 = Slot A, 1 = Slot B */
    uint32_t pending_try;   /* 0, or TRYA / TRYB */
    uint32_t commit;        /* 0, or CMTA / CMTB */
};
#pragma pack(pop)

#define UART_OTA_AB_PERSIST_BYTES   ((uint32_t)sizeof(struct ab_persist))

#define UART_OTA_TRY_A              0x54525941UL /* "TRYA" */
#define UART_OTA_TRY_B              0x54525942UL /* "TRYB" */
#define UART_OTA_COMMIT_A           0x434D5441UL /* "CMTA" */
#define UART_OTA_COMMIT_B           0x434D5442UL /* "CMTB" */

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
