#include <rtthread.h>
#include <rthw.h>
#include <rtdevice.h>
#include <board.h>
#include <string.h>
#include <stdlib.h>

#include "bf0_hal.h"
#include "drv_io.h"
#include "register.h"
#include "uart_ota.h"

#define LOG_TAG "app"
#include "log.h"

/* ===================================================================
 *  Feature 1: SK6812MINI-HS on PA32 (GPTIM2 CH1 = pwm3)
 *
 *  协议：单线 NZR ~800kHz，24bit GRB MSB 先，复位拉低 >80us（同 WS2812 族）。
 *
 *  实现：用 GPTIM2 硬件 PWM 产生每位的高电平宽度，周期固定 1250ns；在 UIF
 *  边界写 CCR1 切换下一 bit。SF32LB52 上 drv_pwm 对 GPTIM2 使用固定 24MHz
 *  计数时钟（见 drv_pwm_set）。
 * =================================================================== */

#define SK6812_PAD           PAD_PA32

#define SK6812_PWM_NAME      "pwm3"
#define SK6812_PWM_CH        1
#define SK6812_PERIOD_NS     1250U
#define SK6812_T0_PULSE_NS   280U
#define SK6812_T1_PULSE_NS   650U
/* 复位低电平：用固定周期下 CCR=0 的 PWM 凑够 >80us，避免每帧关 PWM/切 GPIO 造成毛刺闪烁 */
#define SK6812_RESET_UIVES   72U

/*
 * 亮度是「HSV 明度 V × 呼吸 br」两段相乘；仅调 br 时 V=255 仍很亮。
 * HSV_V：颜色本身的最大分量上限；BREATH_PEAK：呼吸到顶时的 br（再乘到 RGB 上）。
 */
#define SK6812_HSV_V         100U
#define SK6812_BREATH_PEAK   36U

/* 与 drv_pwm_set 中 GPTIM2 分支一致：GPT_clock/1e6 = 24 */
#define SK6812_GPT_MHZ       24U

static struct rt_device_pwm *sk6812_pwm;
static uint32_t sk6812_ccr0;
static uint32_t sk6812_ccr1;
static uint8_t sk6812_pwm_armed;

static void sk6812_pwm_compute_ccr(void)
{
    uint32_t p0 = SK6812_T0_PULSE_NS * SK6812_GPT_MHZ / 1000U;
    uint32_t p1 = SK6812_T1_PULSE_NS * SK6812_GPT_MHZ / 1000U;

    if (p0 < 1U)
        p0 = 1U;
    if (p1 < 1U)
        p1 = 1U;
    /* drv_pwm_set: __HAL_GPT_SET_COMPARE(..., pulse - 1) */
    sk6812_ccr0 = p0 - 1U;
    sk6812_ccr1 = p1 - 1U;
}

static inline void sk6812_pwm_wait_uif(void)
{
    while ((GPTIM2->SR & GPT_SR_UIF) == 0U)
    {
    }
    GPTIM2->SR &= ~GPT_SR_UIF;
}

static void sk6812_send_byte_pwm(uint8_t v)
{
    uint32_t m;

    for (m = 0x80U; m != 0U; m >>= 1)
    {
        sk6812_pwm_wait_uif();
        GPTIM2->CCR1 = (v & m) ? sk6812_ccr1 : sk6812_ccr0;
    }
}

/* GRB, MSB first；PWM 常开，复位段仅拉 CCR=0 并数 UIF，不再切引脚 */
static void sk6812_show_grb(uint8_t g, uint8_t r, uint8_t b)
{
    struct rt_pwm_configuration cfg = {0};
    rt_base_t level;
    uint32_t k;

    cfg.channel = SK6812_PWM_CH;
    cfg.period = SK6812_PERIOD_NS;
    cfg.pulse = SK6812_T0_PULSE_NS;

    level = rt_hw_interrupt_disable();

    if (!sk6812_pwm_armed)
    {
        rt_device_control(&sk6812_pwm->parent, PWM_CMD_SET, &cfg);
        rt_pwm_enable(sk6812_pwm, SK6812_PWM_CH);
        /* 关闭 CH1 比较值预装载，写 CCR1 立即生效，避免与 UIF 错一拍 */
        GPTIM2->CCMR1 &= ~GPT_CCMR1_OC1PE;
        sk6812_pwm_armed = 1;
    }

    GPTIM2->SR &= ~GPT_SR_UIF;

    sk6812_send_byte_pwm(g);
    sk6812_send_byte_pwm(r);
    sk6812_send_byte_pwm(b);
    sk6812_pwm_wait_uif();

    GPTIM2->CCR1 = 0U;
    for (k = 0; k < SK6812_RESET_UIVES; k++)
        sk6812_pwm_wait_uif();

    rt_hw_interrupt_enable(level);
}

static int sk6812_pwm_setup(void)
{
    sk6812_pwm_armed = 0;

    HAL_PIN_Set(SK6812_PAD, GPTIM2_CH1, PIN_PULLUP, 1);

    sk6812_pwm = (struct rt_device_pwm *)rt_device_find(SK6812_PWM_NAME);
    if (sk6812_pwm == RT_NULL)
        return -1;

    rt_device_open((struct rt_device *)sk6812_pwm, RT_DEVICE_OFLAG_RDWR);
    sk6812_pwm_compute_ccr();
    return 0;
}

static void sk6812_hsv_to_rgb_u8(uint16_t h_deg, uint8_t s, uint8_t v, uint8_t *r, uint8_t *g, uint8_t *b)
{
    uint16_t region, rem, p, q, t;

    if (s == 0)
    {
        *r = *g = *b = v;
        return;
    }
    region = (uint16_t)((h_deg % 360U) * 6U / 360U);
    rem = (uint16_t)(((h_deg % 360U) * 6U * 256U / 360U) & 0xFFU);
    p = (uint16_t)((uint32_t)v * (255U - s) / 255U);
    q = (uint16_t)((uint32_t)v * (255U - (uint32_t)s * rem / 256U) / 255U);
    t = (uint16_t)((uint32_t)v * (255U - (uint32_t)s * (255U - rem) / 256U) / 255U);
    switch (region)
    {
    case 0: *r = v; *g = (uint8_t)t; *b = (uint8_t)p; break;
    case 1: *r = (uint8_t)q; *g = v; *b = (uint8_t)p; break;
    case 2: *r = (uint8_t)p; *g = v; *b = (uint8_t)t; break;
    case 3: *r = (uint8_t)p; *g = (uint8_t)q; *b = v; break;
    case 4: *r = (uint8_t)t; *g = (uint8_t)p; *b = v; break;
    default: *r = v; *g = (uint8_t)p; *b = (uint8_t)q; break;
    }
}

static void sk6812_led_entry(void *param)
{
    uint16_t hue = 0;
    int breath_i = 0;
    int breath_dir = 1;

    (void)param;

    if (sk6812_pwm_setup() != 0)
    {
        LOG_E("SK6812: %s not found", SK6812_PWM_NAME);
        return;
    }
    /* 先拉一帧全黑，避免上电乱码锁成高亮 */
    sk6812_show_grb(0, 0, 0);
    LOG_I("SK6812: GPTIM2 pwm3, no pinmux per frame, OC1PE off");

    while (1)
    {
        uint8_t r, g, b;
        uint32_t bf;

        /* Quadratic ease 0..100; scale in one 32-bit step so low PEAK stays smooth
         * (uint8_t br had only ~PEAK+1 levels and looked stepped). */
        breath_i += breath_dir;
        if (breath_i >= 100)
        {
            breath_i = 100;
            breath_dir = -1;
        }
        else if (breath_i <= 0)
        {
            breath_i = 0;
            breath_dir = 1;
            hue = (uint16_t)((hue + 15U) % 360U);
        }
        bf = (uint32_t)breath_i * breath_i * SK6812_BREATH_PEAK;

        sk6812_hsv_to_rgb_u8(hue, 255, SK6812_HSV_V, &r, &g, &b);
        r = (uint8_t)((uint32_t)r * bf / (255U * 10000U));
        g = (uint8_t)((uint32_t)g * bf / (255U * 10000U));
        b = (uint8_t)((uint32_t)b * bf / (255U * 10000U));

        sk6812_show_grb(g, r, b);
        /* ~100 steps × 15 ms ≈ 1.5 s half-cycle (was 3× step + 45 ms, similar period) */
        rt_thread_mdelay(15);
    }
}

/* ===================================================================
 *  Feature 2: BLE Peripheral (Advertising + Connection + GATT)
 * =================================================================== */

#ifdef BSP_BLE_SIBLES

#include "bf0_ble_gap.h"
#include "bf0_sibles.h"
#include "bf0_sibles_internal.h"
#include "bf0_sibles_advertising.h"
#include "ble_connection_manager.h"

enum app_att_list
{
    APP_ATT_SVC,
    APP_ATT_CHAR,
    APP_ATT_CHAR_VALUE,
    APP_ATT_CCCD,
    APP_ATT_NB
};

#define APP_SVC_UUID { \
    0x73, 0x69, 0x66, 0x6c, \
    0x69, 0x5f, 0x61, 0x70, \
    0x70, 0x00, 0x00, 0x00, \
    0x00, 0x00, 0x00, 0x00 \
};

#define APP_CHAR_UUID { \
    0x73, 0x69, 0x66, 0x6c, \
    0x69, 0x5f, 0x61, 0x70, \
    0x70, 0x01, 0x00, 0x00, \
    0x00, 0x00, 0x00, 0x00 \
}

#define SERIAL_UUID_16(x) {((uint8_t)(x & 0xff)), ((uint8_t)(x >> 8))}

typedef struct
{
    uint8_t     is_power_on;
    uint8_t     conn_idx;
    uint16_t    mtu;
    bd_addr_t   peer_addr;
    sibles_hdl  srv_handle;
    uint32_t    app_data;
    uint8_t     cccd_on;
    rt_mailbox_t mb_handle;
} app_ble_env_t;

static app_ble_env_t g_ble_env;
static uint8_t g_svc_uuid[ATT_UUID_128_LEN] = APP_SVC_UUID;

/* GATT service attribute database */
BLE_GATT_SERVICE_DEFINE_128(app_att_db)
{
    BLE_GATT_SERVICE_DECLARE(APP_ATT_SVC,
        SERIAL_UUID_16_PRI_SERVICE, BLE_GATT_PERM_READ_ENABLE),
    BLE_GATT_CHAR_DECLARE(APP_ATT_CHAR,
        SERIAL_UUID_16_CHARACTERISTIC, BLE_GATT_PERM_READ_ENABLE),
    BLE_GATT_CHAR_VALUE_DECLARE(APP_ATT_CHAR_VALUE, APP_CHAR_UUID,
        BLE_GATT_PERM_READ_ENABLE | BLE_GATT_PERM_WRITE_REQ_ENABLE |
        BLE_GATT_PERM_WRITE_COMMAND_ENABLE | BLE_GATT_PERM_NOTIFY_ENABLE,
        BLE_GATT_VALUE_PERM_UUID_128 | BLE_GATT_VALUE_PERM_RI_ENABLE,
        512),
    BLE_GATT_DESCRIPTOR_DECLARE(APP_ATT_CCCD,
        SERIAL_UUID_16_CLIENT_CHAR_CFG,
        BLE_GATT_PERM_READ_ENABLE | BLE_GATT_PERM_WRITE_REQ_ENABLE,
        BLE_GATT_VALUE_PERM_RI_ENABLE, 2),
};

/* ---------- Advertising ---------- */

SIBLES_ADVERTISING_CONTEXT_DECLAR(g_adv_context);

static uint8_t app_adv_event_cb(uint8_t event, void *context, void *data)
{
    switch (event)
    {
    case SIBLES_ADV_EVT_ADV_STARTED:
    {
        sibles_adv_evt_startted_t *evt = (sibles_adv_evt_startted_t *)data;
        LOG_I("ADV started (status=%d, mode=%d)", evt->status, evt->adv_mode);
        break;
    }
    case SIBLES_ADV_EVT_ADV_STOPPED:
    {
        sibles_adv_evt_stopped_t *evt = (sibles_adv_evt_stopped_t *)data;
        LOG_I("ADV stopped (reason=%d, mode=%d)", evt->reason, evt->adv_mode);
        break;
    }
    default:
        break;
    }
    return 0;
}

static void app_ble_start_advertising(void)
{
    sibles_advertising_para_t para = {0};
    uint8_t ret;
    char local_name[31] = {0};

    bd_addr_t addr;
    ret = ble_get_public_address(&addr);
    if (ret == HL_ERR_NO_ERROR)
        rt_snprintf(local_name, sizeof(local_name), "SF32_DEV-%02x%02x%02x",
                    addr.addr[2], addr.addr[1], addr.addr[0]);
    else
        rt_strncpy(local_name, "SF32_DEV", sizeof(local_name) - 1);

    ble_gap_dev_name_t *dev_name = rt_malloc(sizeof(ble_gap_dev_name_t) + strlen(local_name));
    dev_name->len = strlen(local_name);
    rt_memcpy(dev_name->name, local_name, dev_name->len);
    ble_gap_set_dev_name(dev_name);
    rt_free(dev_name);

    para.own_addr_type = GAPM_STATIC_ADDR;
    para.config.adv_mode = SIBLES_ADV_CONNECT_MODE;
    para.config.mode_config.conn_config.duration = 0;
    para.config.mode_config.conn_config.interval = 0x30;
    para.config.max_tx_pwr = 0x7F;
    para.config.is_auto_restart = 1;

    para.rsp_data.completed_name = rt_malloc(strlen(local_name) + sizeof(sibles_adv_type_name_t));
    para.rsp_data.completed_name->name_len = strlen(local_name);
    rt_memcpy(para.rsp_data.completed_name->name, local_name, strlen(local_name));

    uint8_t manu_data[] = {0x20, 0xC4, 0x00, 0x91};
    para.adv_data.manufacturer_data = rt_malloc(sizeof(sibles_adv_type_manufacturer_data_t) + sizeof(manu_data));
    para.adv_data.manufacturer_data->company_id = SIG_SIFLI_COMPANY_ID;
    para.adv_data.manufacturer_data->data_len = sizeof(manu_data);
    rt_memcpy(para.adv_data.manufacturer_data->additional_data, manu_data, sizeof(manu_data));

    para.evt_handler = app_adv_event_cb;

    ret = sibles_advertising_init(g_adv_context, &para);
    if (ret == SIBLES_ADV_NO_ERR)
        sibles_advertising_start(g_adv_context);

    rt_free(para.rsp_data.completed_name);
    rt_free(para.adv_data.manufacturer_data);

    LOG_I("BLE advertising as: %s", local_name);
}

/* ---------- GATT Read/Write Callbacks ---------- */

static uint8_t *app_gatts_get_cbk(uint8_t conn_idx, uint8_t idx, uint16_t *len)
{
    *len = 0;
    if (idx == APP_ATT_CHAR_VALUE)
    {
        *len = 4;
        return (uint8_t *)&g_ble_env.app_data;
    }
    return RT_NULL;
}

static uint8_t app_gatts_set_cbk(uint8_t conn_idx, sibles_set_cbk_t *para)
{
    if (para->idx == APP_ATT_CHAR_VALUE)
    {
        LOG_HEX("BLE_RX", 16, para->value, para->len);
        if (para->len <= 4)
            memcpy(&g_ble_env.app_data, para->value, para->len);
        LOG_I("BLE RX value: 0x%08x (len=%d)", g_ble_env.app_data, para->len);
    }
    else if (para->idx == APP_ATT_CCCD)
    {
        g_ble_env.cccd_on = *(para->value);
        LOG_I("CCCD notify %s", g_ble_env.cccd_on ? "ON" : "OFF");
    }
    return 0;
}

/* ---------- Service Registration ---------- */

static void app_ble_service_init(void)
{
    BLE_GATT_SERVICE_INIT_128(svc, app_att_db, APP_ATT_NB,
        BLE_GATT_SERVICE_PERM_NOAUTH | BLE_GATT_SERVICE_PERM_UUID_128 |
        BLE_GATT_SERVICE_PERM_MULTI_LINK,
        g_svc_uuid);

    g_ble_env.srv_handle = sibles_register_svc_128(&svc);
    if (g_ble_env.srv_handle)
        sibles_register_cbk(g_ble_env.srv_handle, app_gatts_get_cbk, app_gatts_set_cbk);
}

/* ---------- BLE Event Handler ---------- */

static int app_ble_event_handler(uint16_t event_id, uint8_t *data, uint16_t len, uint32_t context)
{
    switch (event_id)
    {
    case BLE_POWER_ON_IND:
        if (g_ble_env.mb_handle &&
                rt_mb_send(g_ble_env.mb_handle, BLE_POWER_ON_IND) != RT_EOK)
            LOG_W("ble_mb send POWER_ON failed (mailbox full?)");
        break;

    case BLE_GAP_CONNECTED_IND:
    {
        ble_gap_connect_ind_t *ind = (ble_gap_connect_ind_t *)data;
        g_ble_env.conn_idx = ind->conn_idx;
        g_ble_env.peer_addr = ind->peer_addr;
        g_ble_env.mtu = 23;
        LOG_I("BLE connected! peer=%02x:%02x:%02x:%02x:%02x:%02x",
              ind->peer_addr.addr[5], ind->peer_addr.addr[4],
              ind->peer_addr.addr[3], ind->peer_addr.addr[2],
              ind->peer_addr.addr[1], ind->peer_addr.addr[0]);
        break;
    }

    case BLE_GAP_UPDATE_CONN_PARAM_IND:
    {
        ble_gap_update_conn_param_ind_t *ind = (ble_gap_update_conn_param_ind_t *)data;
        LOG_I("Conn interval updated: %d", ind->con_interval);
        break;
    }

    case SIBLES_MTU_EXCHANGE_IND:
    {
        sibles_mtu_exchange_ind_t *ind = (sibles_mtu_exchange_ind_t *)data;
        g_ble_env.mtu = ind->mtu;
        LOG_I("MTU exchanged: %d", ind->mtu);
        break;
    }

    case BLE_GAP_DISCONNECTED_IND:
    {
        ble_gap_disconnected_ind_t *ind = (ble_gap_disconnected_ind_t *)data;
        LOG_I("BLE disconnected (reason=%d)", ind->reason);
        break;
    }

    default:
        break;
    }
    return 0;
}
BLE_EVENT_REGISTER(app_ble_event_handler, NULL);

/* MAC address generation (used when NVDS auto update is not enabled) */
#ifndef NVDS_AUTO_UPDATE_MAC_ADDRESS_ENABLE
ble_common_update_type_t ble_request_public_address(bd_addr_t *addr)
{
    int ret = bt_mac_addr_generate_via_uid_v2(addr);
    if (ret != 0)
        return BLE_UPDATE_NO_UPDATE;
    return BLE_UPDATE_ONCE;
}
#endif

uint8_t ble_app_dis_enable(void)
{
    return 1;
}

#endif /* BSP_BLE_SIBLES */

/* ===================================================================
 *  Feature 3: Shell Commands (UART firmware upgrade + BLE control)
 * =================================================================== */

static int cmd_reboot(int argc, char *argv[])
{
    rt_kprintf("Rebooting device...\n");
    rt_thread_mdelay(100);
    NVIC_SystemReset();
    return 0;
}
MSH_CMD_EXPORT(cmd_reboot, Reboot device);

static int cmd_uart_download(int argc, char *argv[])
{
    rt_kprintf("=== UART Firmware Download Guide ===\n");
    rt_kprintf("1. Connect USB-UART to the board (UART1: PA18-RX, PA19-TX)\n");
    rt_kprintf("2. Hold Key1 (PA34) and press Reset to enter download mode\n");
    rt_kprintf("3. Run uart_download.bat in build folder\n");
    rt_kprintf("4. Enter COM port number when prompted\n");
    rt_kprintf("Tool command:\n");
    rt_kprintf("  sftool -p COMx -c SF32LB52 -m nor write_flash \\\n");
    rt_kprintf("    \"bootloader.bin@0x12010000\" \\\n");
    rt_kprintf("    \"main.bin@0x12020000\" \\\n");
    rt_kprintf("    \"ftab.bin@0x12000000\"\n");
    rt_kprintf("====================================\n");
    return 0;
}
MSH_CMD_EXPORT(cmd_uart_download, Show UART firmware download instructions);

#ifdef BSP_BLE_SIBLES
static int cmd_ble(int argc, char *argv[])
{
    if (argc < 2)
    {
        rt_kprintf("BLE commands:\n");
        rt_kprintf("  ble status     - Show BLE status\n");
        rt_kprintf("  ble adv_start  - Start advertising\n");
        rt_kprintf("  ble adv_stop   - Stop advertising\n");
        return 0;
    }

    if (strcmp(argv[1], "status") == 0)
    {
        rt_kprintf("Power on: %s\n", g_ble_env.is_power_on ? "YES" : "NO");
        rt_kprintf("MTU: %d\n", g_ble_env.mtu);
        rt_kprintf("CCCD: %s\n", g_ble_env.cccd_on ? "ON" : "OFF");
    }
    else if (strcmp(argv[1], "adv_start") == 0)
    {
        sibles_advertising_start(g_adv_context);
        rt_kprintf("Advertising started\n");
    }
    else if (strcmp(argv[1], "adv_stop") == 0)
    {
        sibles_advertising_stop(g_adv_context);
        rt_kprintf("Advertising stopped\n");
    }

    return 0;
}
MSH_CMD_EXPORT(cmd_ble, BLE control commands);
#endif

/* ===================================================================
 *  Main Entry
 * =================================================================== */

int main(void)
{
    rt_kprintf("\n=================main v9.4 [SECBOOT] verify =========\n");
    rt_kprintf("\n========================================\n");
    rt_kprintf("  SF32LB52 Application (BLE + LED + DFU)\n");
    rt_kprintf("========================================\n\n");

    uart_ota_init();

    /* 1. SK6812 RGB (PA32, GRB stream per datasheet) */
    rt_thread_t tid = rt_thread_create("sk6812",
        sk6812_led_entry, RT_NULL, 1024, RT_THREAD_PRIORITY_MAX - 3, 10);
    if (tid)
        rt_thread_startup(tid);
    rt_kprintf("[OK] SK6812 LED thread started (PA32, GRB)\n");

#ifdef BSP_BLE_SIBLES
    /* 2. Initialize BLE stack and start advertising */
    g_ble_env.mb_handle = rt_mb_create("ble_mb", 8, RT_IPC_FLAG_FIFO);
    g_ble_env.mtu = 23;

    sifli_ble_enable();
    rt_kprintf("[..] BLE stack initializing...\n");

    /* Wait until stack is SIBLES_READY. Relying only on BLE_POWER_ON_IND + mailbox can hang if
     * rt_mb_send fails or the event path drops; g_sibles.status is set before ble_event_publish. */
    {
        int wait_round = 0;

        while (1)
        {
            uint32_t value;
            rt_err_t mr;

            mr = rt_mb_recv(g_ble_env.mb_handle, (rt_uint32_t *)&value,
                            rt_tick_from_millisecond(500));
            if (mr == RT_EOK && value == BLE_POWER_ON_IND)
                break;
            if (sifli_sibles_stack_ready())
                break;

            wait_round++;
            /* mb=-2 即 RT_ETIMEOUT；ready 长期为 0 多为未嵌入 LCPU BLE 镜像，见 project/SConstruct AddLCPU */
            if (mr != RT_EOK && (wait_round % 20) == 0)
            {
                rt_kprintf("[..] BLE still starting (mb=%d, ready=%d). If stuck: rebuild with LCPU embedded (AddLCPU).\n",
                           (int)mr, sifli_sibles_stack_ready());
            }
        }
    }

    g_ble_env.is_power_on = 1;
    app_ble_service_init();
    app_ble_start_advertising();
    rt_kprintf("[OK] BLE ready! Device is advertising.\n");
    rt_kprintf("[!!] Use nRF Connect (Android/iOS) to scan and connect.\n");

    while (1)
        rt_thread_mdelay(10000);
#else
    rt_kprintf("[--] BLE not enabled. Enable CONFIG_BLUETOOTH in proj.conf.\n");
    while (1)
    {
        rt_thread_mdelay(5000);
    }
#endif

    return RT_EOK;
}
