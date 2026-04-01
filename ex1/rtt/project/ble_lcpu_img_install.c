/*
 * Strong lcpu_img_install for Rev < A4 only. Do not pull in sf32lb52_lcpu_patch.h — patch
 * symbols already come from drivers/cmsis sf32lb52x/lcpu_patch*.c.
 */
#include <rtconfig.h>
#include <string.h>
#include <stdint.h>
#include "bf0_hal.h"
#include "mem_map.h"
#include "sf32lb52_lcpu.h"

void lcpu_img_install(void)
{
    uint8_t rev_id = __HAL_SYSCFG_GET_REVID();

    if (rev_id < HAL_CHIP_REV_ID_A4)
        memcpy((void *)(HCPU_LCPU_CODE_START_ADDR), g_lcpu_bin, sizeof(g_lcpu_bin));
}
