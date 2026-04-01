/*
 * UART OTA: 应用运行时向 Slot B 写入固件镜像（A/B 物理分区）。
 *
 * Flash 布局（与板级 ptab 中 main 区 0x12020000、长度 0x00700000 对齐）:
 *   Slot A (运行中): 0x12020000, 3.5MiB (0x00380000) — 链接器须限制 APP 不超过此大小
 *   Slot B (升级槽): 0x123A0000, 3.5MiB — UART OTA 写入目标
 *   其后: 0x12720000 起为原厂 DFU 等分区，不可覆盖
 *
 * 注意: 从 A 区 XIP 运行时无法安全自擦写 A 区。验证 B 区成功后，可用官方 sftool
 * 在下载模式下将已保存的 main.bin 写回 0x12020000，或自行扩展引导从 B 启动。
 */
#ifndef UART_OTA_H
#define UART_OTA_H

#include <stdint.h>
#include <rtdef.h>

#define UART_OTA_SLOT_A_BASE    0x12020000UL
#define UART_OTA_SLOT_B_BASE    0x123A0000UL
#define UART_OTA_SLOT_SIZE      0x00380000UL /* 3.5 MiB per bank */
#define UART_OTA_META_SECTOR    0x00001000UL /* B 区最后 4KB 存元数据，镜像最大 = SLOT_SIZE - META */
#define UART_OTA_MAX_IMAGE_SIZE (UART_OTA_SLOT_SIZE - UART_OTA_META_SECTOR)

#define UART_OTA_MAGIC_META     0x314F545AU /* "OT4" little */

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
