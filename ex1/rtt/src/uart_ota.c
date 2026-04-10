/*
 * UART OTA: binary framing, write to Slot B, CRC32 verify, meta in last 4K of B.
 */
#include "uart_ota.h"
#include <rtthread.h>
#include <rthw.h>
#include <rtdevice.h>
#include <string.h>
#include <finsh.h>
#include "drv_flash.h"
#include "bf0_hal.h" /* HAL_PMU_Reboot */

#define LOG_TAG "uart_ota"
#include "log.h"

#define SOF0 0x55
#define SOF1 0xAA

#define CMD_HELLO   0x01
#define CMD_ERASE_B 0x02
#define CMD_DATA    0x03
#define CMD_FINISH  0x04
#define CMD_ABORT   0x05
#define CMD_REBOOT  0x06
#define CMD_TARGET  0x07
#define CMD_RSP     0x80

#define MAX_FRAME_PAYLOAD 512
static rt_bool_t s_ota_active;
static rt_device_t s_uart;
static rt_err_t (*s_saved_rx_ind)(rt_device_t dev, rt_size_t size);
static uart_ota_ble_tx_cb_t s_ble_tx_cb;
static uint16_t s_ble_mtu = 23;

enum ota_transport
{
    OTA_TRANSPORT_NONE = 0,
    OTA_TRANSPORT_UART,
    OTA_TRANSPORT_BLE,
};

static enum ota_transport s_transport;

static uint8_t s_rxbuf[8 + MAX_FRAME_PAYLOAD + 4];
/* Snapshot DATA payload: rt_flash_write may malloc; UART RX must not clobber pl during long program */
static uint8_t s_wr_snap[MAX_FRAME_PAYLOAD];
static uint16_t s_rx_len;
static uint32_t s_image_ofs;
static uint32_t s_finish_size;
static uint32_t s_finish_crc;
static uint32_t s_target_base = UART_OTA_SLOT_B_BASE;
static uint32_t s_target_size = UART_OTA_SLOT_SIZE;
static uint32_t s_image_slot_base;
static uint32_t s_stream_crc;
static uint32_t s_stream_size;
static rt_bool_t s_stream_crc_valid;

static void ab_persist_load(struct ab_persist *m);
static int ab_persist_save(const struct ab_persist *m);

static uint16_t current_max_frame_payload(void)
{
    if (s_transport == OTA_TRANSPORT_BLE)
    {
        /*
         * ATT payload = MTU - 3.
         * OTA frame overhead = SOF(2) + cmd(1) + len(2) + seq(2) + crc(4) = 11 bytes.
         */
        uint16_t att_payload = (s_ble_mtu > 3) ? (uint16_t)(s_ble_mtu - 3) : 0;
        if (att_payload > 11)
        {
            uint16_t frame_payload = (uint16_t)(att_payload - 11);
            return (frame_payload < MAX_FRAME_PAYLOAD) ? frame_payload : MAX_FRAME_PAYLOAD;
        }
        return 0;
    }

    return MAX_FRAME_PAYLOAD;
}

/* ---- CRC32 (IEEE / zlib, poly 0xEDB88320) ---- */
static uint32_t crc32_update(uint32_t crc, const uint8_t *p, int len)
{
    crc = ~crc;
    for (int i = 0; i < len; i++)
    {
        crc ^= p[i];
        for (int k = 0; k < 8; k++)
            crc = (crc >> 1) ^ (0xEDB88320u & (uint32_t)(-(crc & 1)));
    }
    return ~crc;
}

static void send_frame(uint8_t cmd, const uint8_t *pl, uint16_t plen)
{
    uint8_t out[4 + 1 + 2 + 2 + MAX_FRAME_PAYLOAD + 4];
    uint32_t crc;
    uint16_t i = 0;

    if (plen > MAX_FRAME_PAYLOAD)
        return;
    if (s_transport == OTA_TRANSPORT_UART && !s_uart)
        return;
    if (s_transport == OTA_TRANSPORT_BLE && !s_ble_tx_cb)
        return;
    out[i++] = SOF0;
    out[i++] = SOF1;
    out[i++] = cmd;
    out[i++] = (uint8_t)(plen & 0xFF);
    out[i++] = (uint8_t)(plen >> 8);
    out[i++] = 0;
    out[i++] = 0; /* seq */
    if (plen && pl)
        memcpy(out + i, pl, plen);
    i += plen;
    /* CRC over cmd + len(2) + seq(2) + payload */
    crc = crc32_update(0, out + 2, (int)(i - 2));
    out[i++] = (uint8_t)(crc & 0xFF);
    out[i++] = (uint8_t)((crc >> 8) & 0xFF);
    out[i++] = (uint8_t)((crc >> 16) & 0xFF);
    out[i++] = (uint8_t)((crc >> 24) & 0xFF);
    if (s_transport == OTA_TRANSPORT_UART)
        rt_device_write(s_uart, 0, out, i);
    else if (s_transport == OTA_TRANSPORT_BLE && s_ble_tx_cb)
        (void)s_ble_tx_cb(out, i);
}

static void send_rsp(uint8_t orig_cmd, uint8_t status, const uint8_t *extra, uint16_t elen)
{
    uint8_t buf[1 + 64];
    buf[0] = status;
    if (elen && elen < sizeof(buf) - 1)
        memcpy(buf + 1, extra, elen);
    send_frame((uint8_t)(CMD_RSP | orig_cmd), buf, (uint16_t)(1 + elen));
}

static uint32_t get_active_slot_base(void)
{
    struct ab_persist m;
    ab_persist_load(&m);
    if (m.magic != UART_OTA_AB_PERSIST_MAGIC)
        return UART_OTA_SLOT_A_BASE;
    return (m.active_slot == 1) ? UART_OTA_SLOT_B_BASE : UART_OTA_SLOT_A_BASE;
}

static uint32_t pick_target_slot_base(void)
{
    return (get_active_slot_base() == UART_OTA_SLOT_A_BASE) ? UART_OTA_SLOT_B_BASE : UART_OTA_SLOT_A_BASE;
}

static uint32_t pick_target_ftab_base(void)
{
    return (get_active_slot_base() == UART_OTA_SLOT_A_BASE) ? UART_OTA_FTAB_B_BASE : UART_OTA_FTAB_A_BASE;
}

static void set_try_boot_for_target(uint32_t target_base)
{
    struct ab_persist m;
    ab_persist_load(&m);
    if (m.magic != UART_OTA_AB_PERSIST_MAGIC)
    {
        memset(&m, 0, sizeof(m));
        m.magic       = UART_OTA_AB_PERSIST_MAGIC;
        m.active_slot = 0;
    }
    m.pending_try = (target_base == UART_OTA_SLOT_B_BASE) ? UART_OTA_TRY_B : UART_OTA_TRY_A;
    m.commit      = 0;
    (void)ab_persist_save(&m);
}

static const char *slot_name(uint32_t base)
{
    return (base == UART_OTA_SLOT_B_BASE) ? "B" : "A";
}

static int flash_erase_range(uint32_t base, uint32_t size)
{
    int al = rt_flash_get_erase_alignment(base);
    if (al <= 0)
        al = 4096;
    uint32_t end = base + size;
    for (uint32_t a = base; a < end;)
    {
        uint32_t chunk = (uint32_t)al;
        if (a + chunk > end)
            chunk = end - a;
        int r = rt_flash_erase(a, (int)chunk);
        if (r != 0)
        {
            LOG_E("erase 0x%lx fail %d", (unsigned long)a, r);
            return -1;
        }
        a += chunk;
    }
    return 0;
}

static int flash_write_at(uint32_t addr, const uint8_t *d, uint32_t len)
{
    int w = rt_flash_write(addr, d, (int)len);
    return (w == (int)len) ? 0 : -1;
}

static uint32_t ab_persist_addr(void)
{
    uint32_t total = (uint32_t)rt_flash_get_total_size(UART_OTA_FTAB_A_BASE);
    uint32_t base = UART_OTA_FTAB_A_BASE;
    uint32_t cand = UART_OTA_AB_PERSIST_ADDR;

    if (total >= 0x1000)
    {
        uint32_t end = base + total;
        if (cand < base || (cand + UART_OTA_AB_PERSIST_BYTES) > end)
            cand = end - 0x1000;
    }
    return cand;
}

/* ---- A/B persist (Flash @ UART_OTA_AB_PERSIST_ADDR), no RTC BKP ---- */
static void ab_persist_load(struct ab_persist *m)
{
    uint32_t addr = ab_persist_addr();
    if (rt_flash_read(addr, (uint8_t *)m, sizeof(*m)) != (int)sizeof(*m))
    {
        memset(m, 0, sizeof(*m));
        return;
    }
    if (m->magic != UART_OTA_AB_PERSIST_MAGIC)
    {
        memset(m, 0, sizeof(*m));
        return;
    }
    if (m->pending_try != UART_OTA_TRY_A && m->pending_try != UART_OTA_TRY_B)
        m->pending_try = 0;
    if (m->commit != UART_OTA_COMMIT_A && m->commit != UART_OTA_COMMIT_B)
        m->commit = 0;
}

static int ab_persist_save(const struct ab_persist *m)
{
    uint32_t addr = ab_persist_addr();
    if (flash_erase_range(addr, 0x1000) != 0)
    {
        LOG_E("ab_persist erase fail @ 0x%lx", (unsigned long)addr);
        return -1;
    }
    if (flash_write_at(addr, (const uint8_t *)m, sizeof(*m)) != 0)
    {
        LOG_E("ab_persist write fail @ 0x%lx", (unsigned long)addr);
        return -1;
    }
    return 0;
}

static uint32_t crc_image(uint32_t slot_base, uint32_t nbytes)
{
    uint8_t blk[256];
    uint32_t crc = 0;
    uint32_t a = slot_base;
    while (nbytes)
    {
        uint32_t n = nbytes > sizeof(blk) ? sizeof(blk) : nbytes;
        if (rt_flash_read(a, blk, (int)n) != (int)n)
            return 0;
        crc = crc32_update(crc, blk, (int)n);
        a += n;
        nbytes -= n;
    }
    return crc;
}

static int write_meta(uint32_t slot_base, uint32_t img_size, uint32_t crc)
{
    struct uart_ota_meta m;
    uint32_t meta_addr = slot_base + UART_OTA_SLOT_SIZE - UART_OTA_META_SECTOR;

    memset(&m, 0, sizeof(m));
    m.magic = UART_OTA_MAGIC_META;
    m.version = 1;
    m.image_size = img_size;
    m.image_crc32 = crc;
    m.flags = 1;

    if (flash_erase_range(meta_addr, UART_OTA_META_SECTOR) != 0)
        return -1;
    return flash_write_at(meta_addr, (const uint8_t *)&m, sizeof(m));
}

static void handle_cmd(uint8_t cmd, const uint8_t *pl, uint16_t plen)
{
    switch (cmd)
    {
    case CMD_HELLO:
    {
        uint32_t info[4];
        s_target_base = pick_target_slot_base();
        s_target_size = UART_OTA_SLOT_SIZE;
        s_image_slot_base = s_target_base;
        info[0] = s_target_base;
        info[1] = UART_OTA_MAX_IMAGE_SIZE;
        info[2] = current_max_frame_payload();
        info[3] = pick_target_ftab_base();
        send_rsp(CMD_HELLO, 0, (uint8_t *)info, sizeof(info));
        break;
    }
    case CMD_ERASE_B:
        s_image_ofs = 0;
        s_stream_crc = 0;
        s_stream_size = 0;
        s_stream_crc_valid = RT_TRUE;
        if (flash_erase_range(s_target_base, s_target_size) != 0)
            send_rsp(CMD_ERASE_B, 1, RT_NULL, 0);
        else
            send_rsp(CMD_ERASE_B, 0, RT_NULL, 0);
        break;
    case CMD_DATA:
        if (plen < 4)
        {
            send_rsp(CMD_DATA, 2, RT_NULL, 0);
            break;
        }
        {
            uint32_t off = (uint32_t)pl[0] | ((uint32_t)pl[1] << 8) | ((uint32_t)pl[2] << 16) | ((uint32_t)pl[3] << 24);
            const uint8_t *dp = pl + 4;
            uint16_t dlen = (uint16_t)(plen - 4);
            if (off + dlen > s_target_size)
            {
                send_rsp(CMD_DATA, 3, RT_NULL, 0);
                break;
            }
            if (dlen > sizeof(s_wr_snap))
            {
                send_rsp(CMD_DATA, 5, RT_NULL, 0);
                break;
            }
            {
                rt_base_t lv = rt_hw_interrupt_disable();
                memcpy(s_wr_snap, dp, dlen);
                rt_hw_interrupt_enable(lv);
            }
            if (flash_write_at(s_target_base + off, s_wr_snap, dlen) != 0)
            {
                LOG_E("DATA wr off=%lu len=%u st=%d", (unsigned long)off, (unsigned)dlen,
                      rt_flash_get_last_status(s_target_base + off));
                send_rsp(CMD_DATA, 4, RT_NULL, 0);
            }
            else
            {
                s_image_ofs = off + dlen;
                if (s_stream_crc_valid && off == s_stream_size)
                {
                    s_stream_crc = crc32_update(s_stream_crc, s_wr_snap, dlen);
                    s_stream_size += dlen;
                }
                else
                {
                    s_stream_crc_valid = RT_FALSE;
                }
                send_rsp(CMD_DATA, 0, RT_NULL, 0);
            }
        }
        break;
    case CMD_FINISH:
        if (plen < 8)
        {
            send_rsp(CMD_FINISH, 1, RT_NULL, 0);
            break;
        }
        s_finish_size = (uint32_t)pl[0] | ((uint32_t)pl[1] << 8) | ((uint32_t)pl[2] << 16) | ((uint32_t)pl[3] << 24);
        s_finish_crc = (uint32_t)pl[4] | ((uint32_t)pl[5] << 8) | ((uint32_t)pl[6] << 16) | ((uint32_t)pl[7] << 24);
        if (s_finish_size == 0 || s_finish_size > s_target_size)
        {
            send_rsp(CMD_FINISH, 2, RT_NULL, 0);
            break;
        }
        {
            uint32_t c;
            rt_bool_t use_stream_crc = RT_FALSE;

            /*
             * When running from Slot B, bootloader may keep XIP alias active for 0x12020000.
             * In that case, rt_flash_read(Slot A XIP range) can read aliased Slot B data.
             * Use streamed DATA CRC for Slot A verification to avoid alias readback mismatch.
             */
            if (get_active_slot_base() == UART_OTA_SLOT_B_BASE && s_target_base == UART_OTA_SLOT_A_BASE)
                use_stream_crc = RT_TRUE;

            if (use_stream_crc)
            {
                if (!s_stream_crc_valid || s_stream_size != s_finish_size)
                {
                    uint8_t eb[8];
                    c = s_stream_crc;
                    memcpy(eb, &c, 4);
                    memcpy(eb + 4, &s_finish_crc, 4);
                    send_rsp(CMD_FINISH, 3, eb, 8);
                    break;
                }
                c = s_stream_crc;
            }
            else
            {
                c = crc_image(s_target_base, s_finish_size);
            }

            if (c != s_finish_crc)
            {
                uint8_t eb[8];
                memcpy(eb, &c, 4);
                memcpy(eb + 4, &s_finish_crc, 4);
                send_rsp(CMD_FINISH, 3, eb, 8);
                break;
            }
        }
        if (s_target_base == UART_OTA_FTAB_A_BASE || s_target_base == UART_OTA_FTAB_B_BASE)
        {
            send_rsp(CMD_FINISH, 0, RT_NULL, 0);
        }
        else
        {
            if (write_meta(s_target_base, s_finish_size, s_finish_crc) != 0)
                send_rsp(CMD_FINISH, 4, RT_NULL, 0);
            else
                send_rsp(CMD_FINISH, 0, RT_NULL, 0);
        }
        break;
    case CMD_ABORT:
        send_rsp(CMD_ABORT, 0, RT_NULL, 0);
        break;
    case CMD_REBOOT:
        set_try_boot_for_target(s_image_slot_base);
        send_rsp(CMD_REBOOT, 0, RT_NULL, 0);
        HAL_PMU_Reboot();
        break;
    case CMD_TARGET:
        if (plen < 8)
        {
            send_rsp(CMD_TARGET, 1, RT_NULL, 0);
            break;
        }
        {
            uint32_t base = (uint32_t)pl[0] | ((uint32_t)pl[1] << 8) | ((uint32_t)pl[2] << 16) | ((uint32_t)pl[3] << 24);
            uint32_t size = (uint32_t)pl[4] | ((uint32_t)pl[5] << 8) | ((uint32_t)pl[6] << 16) | ((uint32_t)pl[7] << 24);
            rt_bool_t ok = RT_FALSE;
            if (base == pick_target_slot_base() && size <= UART_OTA_SLOT_SIZE)
                ok = RT_TRUE;
            else if (base == pick_target_ftab_base() && size <= UART_OTA_FTAB_SIZE)
                ok = RT_TRUE;
            if (ok)
            {
                s_target_base = base;
                s_target_size = size;
                s_image_ofs = 0;
                s_stream_crc = 0;
                s_stream_size = 0;
                s_stream_crc_valid = RT_TRUE;
                send_rsp(CMD_TARGET, 0, RT_NULL, 0);
            }
            else
            {
                send_rsp(CMD_TARGET, 2, RT_NULL, 0);
            }
        }
        break;
    default:
        send_rsp(cmd, 0xFF, RT_NULL, 0);
        break;
    }
}

static void parser_reset(void)
{
    s_rx_len = 0;
}

static void parser_feed(uint8_t c)
{
    if (s_rx_len == 0)
    {
        if (c == SOF0)
            s_rxbuf[s_rx_len++] = c;
        return;
    }
    if (s_rx_len == 1)
    {
        if (c == SOF1)
            s_rxbuf[s_rx_len++] = c;
        else
            parser_reset();
        return;
    }
    if (s_rx_len < sizeof(s_rxbuf))
        s_rxbuf[s_rx_len++] = c;
    if (s_rx_len < 7)
        return;
    {
        uint16_t plen = (uint16_t)(s_rxbuf[3] | (s_rxbuf[4] << 8));
        /* SOF(2)+cmd(1)+len(2)+seq(2)+payload+crc(4) */
        uint32_t need = (uint32_t)(11 + plen);
        if (need > sizeof(s_rxbuf))
        {
            parser_reset();
            return;
        }
        if (s_rx_len < need)
            return;
        {
            uint32_t crc_rx = (uint32_t)s_rxbuf[need - 4] | ((uint32_t)s_rxbuf[need - 3] << 8)
                | ((uint32_t)s_rxbuf[need - 2] << 16) | ((uint32_t)s_rxbuf[need - 1] << 24);
            uint32_t crc_c = crc32_update(0, s_rxbuf + 2, (int)(need - 6));
            if (crc_c != crc_rx)
            {
                parser_reset();
                return;
            }
            handle_cmd(s_rxbuf[2], s_rxbuf + 7, plen);
        }
        parser_reset();
    }
}

static rt_err_t uart_ota_rx_ind(rt_device_t dev, rt_size_t size)
{
    uint8_t b[128];
    rt_size_t n;
    (void)size;
    while ((n = rt_device_read(dev, 0, b, sizeof(b))) > 0)
    {
        for (rt_size_t i = 0; i < n; i++)
            parser_feed(b[i]);
    }
    return RT_EOK;
}

rt_bool_t uart_ota_mode_active(void)
{
    return s_ota_active;
}

int uart_ota_mode_enter(void)
{
    if (s_ota_active || s_transport == OTA_TRANSPORT_BLE)
        return 0;
    s_uart = rt_console_get_device();
    if (s_uart == RT_NULL)
        return -1;
    s_saved_rx_ind = s_uart->rx_indicate;
    parser_reset();
    rt_device_set_rx_indicate(s_uart, uart_ota_rx_ind);
    s_ota_active = RT_TRUE;
    s_transport = OTA_TRANSPORT_UART;
    rt_kprintf("\n*** UART_OTA_MODE ***\nClose msh, use PC tool. uart_ota exit when done.\n");
    {
        s_target_base = pick_target_slot_base();
        s_target_size = UART_OTA_SLOT_SIZE;
        s_image_slot_base = s_target_base;
        uint32_t info[4] = {s_target_base, UART_OTA_MAX_IMAGE_SIZE, current_max_frame_payload(), pick_target_ftab_base()};
        send_rsp(CMD_HELLO, 0, (uint8_t *)info, sizeof(info));
    }
    return 0;
}

void uart_ota_mode_exit(void)
{
    if (!s_ota_active)
        return;
    rt_device_set_rx_indicate(s_uart, s_saved_rx_ind);
    s_saved_rx_ind = RT_NULL;
    s_ota_active = RT_FALSE;
    if (s_transport == OTA_TRANSPORT_UART)
        s_transport = OTA_TRANSPORT_NONE;
    s_uart = RT_NULL;
    parser_reset();
    rt_console_set_device(RT_CONSOLE_DEVICE_NAME);
    rt_kprintf("UART OTA mode off, finsh restored.\n");
}

int uart_ota_ble_mode_enter(uart_ota_ble_tx_cb_t tx_cb)
{
    if (!tx_cb)
        return -1;
    if (s_ota_active)
        return -2;

    s_ble_tx_cb = tx_cb;
    s_transport = OTA_TRANSPORT_BLE;
    parser_reset();
    s_target_base = pick_target_slot_base();
    s_target_size = UART_OTA_SLOT_SIZE;
    s_image_slot_base = s_target_base;
    return 0;
}

void uart_ota_ble_mode_exit(void)
{
    if (s_transport != OTA_TRANSPORT_BLE)
        return;

    s_ble_tx_cb = RT_NULL;
    s_transport = OTA_TRANSPORT_NONE;
    parser_reset();
}

rt_bool_t uart_ota_ble_mode_active(void)
{
    return (s_transport == OTA_TRANSPORT_BLE) ? RT_TRUE : RT_FALSE;
}

void uart_ota_ble_set_mtu(uint16_t mtu)
{
    if (mtu >= 23)
        s_ble_mtu = mtu;
}

int uart_ota_ble_feed(const uint8_t *data, uint16_t len)
{
    if (!data || len == 0)
        return -1;
    if (s_transport != OTA_TRANSPORT_BLE)
        return -2;

    for (uint16_t i = 0; i < len; i++)
        parser_feed(data[i]);

    return 0;
}

static void write_active_persist(int slot_is_b)
{
    struct ab_persist m;
    m.magic       = UART_OTA_AB_PERSIST_MAGIC;
    m.active_slot = slot_is_b ? 1 : 0;
    m.pending_try = 0;
    m.commit      = 0;
    (void)ab_persist_save(&m);
}

void uart_ota_init(void)
{
    struct ab_persist m;
    uint32_t ab_addr = ab_persist_addr();
    ab_persist_load(&m);

    if (m.magic != UART_OTA_AB_PERSIST_MAGIC)
    {
        memset(&m, 0, sizeof(m));
        m.magic       = UART_OTA_AB_PERSIST_MAGIC;
        m.active_slot = 0;
        m.pending_try = 0;
        m.commit      = 0;
        (void)ab_persist_save(&m);
        rt_kprintf("[uart_ota] ab_persist invalid/missing: initialized ACTIVE=A @ 0x%08lx\n",
                   (unsigned long)ab_addr);
    }
    else if (m.pending_try == UART_OTA_TRY_A)
    {
        write_active_persist(0);
        rt_kprintf("[uart_ota] Boot trial confirmed by pending_try: ACTIVE=A (flash @ 0x%08lx)\n",
                   (unsigned long)ab_addr);
    }
    else if (m.pending_try == UART_OTA_TRY_B)
    {
        write_active_persist(1);
        rt_kprintf("[uart_ota] Boot trial confirmed by pending_try: ACTIVE=B (flash @ 0x%08lx)\n",
                   (unsigned long)ab_addr);
    }
    else if (m.commit == UART_OTA_COMMIT_A)
    {
        write_active_persist(0);
        rt_kprintf("[uart_ota] Boot trial confirmed: ACTIVE=A (flash @ 0x%08lx)\n",
                   (unsigned long)ab_addr);
    }
    else if (m.commit == UART_OTA_COMMIT_B)
    {
        write_active_persist(1);
        rt_kprintf("[uart_ota] Boot trial confirmed: ACTIVE=B (flash @ 0x%08lx)\n",
                   (unsigned long)ab_addr);
    }

    {
        uint32_t active_base = get_active_slot_base();
        uint32_t target_base = pick_target_slot_base();
        rt_kprintf("[uart_ota] ACTIVE slot: %s (0x%08lx), next OTA target: %s (0x%08lx)\n",
                   slot_name(active_base), (unsigned long)active_base,
                   slot_name(target_base), (unsigned long)target_base);
    }
}

static int cmd_uart_ota(int argc, char **argv)
{
    if (argc < 2)
    {
        rt_kprintf("uart_ota start  - attach OTA parser (stop typing in shell!)\n");
        rt_kprintf("uart_ota exit   - restore shell\n");
        rt_kprintf("uart_ota reboot - set one-shot try-boot to target slot and reboot\n");
        rt_kprintf("uart_ota status - show A/B layout, active slot and next target\n");
        return 0;
    }
    if (strcmp(argv[1], "start") == 0)
        uart_ota_mode_enter();
    else if (strcmp(argv[1], "exit") == 0)
        uart_ota_mode_exit();
    else if (strcmp(argv[1], "reboot") == 0)
    {
        uint32_t target = pick_target_slot_base();
        set_try_boot_for_target(target);
        rt_kprintf("Set TRY->Slot %s and reboot now.\n", slot_name(target));
        rt_thread_mdelay(50);
        HAL_PMU_Reboot();
    }
    else if (strcmp(argv[1], "verify") == 0)
    {
        /*
         * Read ftab of the INACTIVE (target) slot and display key fields.
         * Helps diagnose why the bootloader rejects Slot B after OTA.
         *
         * ftab layout (struct sec_configuration):
         *   [0]      u32  magic          (0x53454346 = "SECF")
         *   [4]      flash_table[16]     (16 bytes each = 256 bytes)
         *   [260]    sig_pub_key[294]
         *   [4096]   image_header_enc[14] (512 bytes each)
         *   [11264]  running_imgs[4]     (pointers, 4 bytes each)
         *
         * image_header_enc layout (at IMG_OFFSET = 4096 + 2*512 = 5120 for HCPU):
         *   [0] u32  length
         *   [4] u16  blksize
         *   [6] u16  flags
         *   [8] u8   key[32]  (encrypted session key)
         *   [40] u8  sig[256] (RSA signature)
         */
        #define FTAB_MAGIC       0x53454346UL
        #define FTAB_SIZE_BYTES  11280
        #define FTAB_IMG_OFFSET  5120   /* imgs[2] = HCPU */
        #define FTAB_RUNIMG_OFF  11264  /* running_imgs[0] */
        #define FTAB_SIGKEY_OFF  260
        #define FTAB_FLASH4_OFF  (4 + 4 * 16) /* ftab[4].base */

        uint32_t active_base = get_active_slot_base();
        uint32_t ftab_addr = (active_base == UART_OTA_SLOT_A_BASE)
                             ? UART_OTA_FTAB_B_BASE : UART_OTA_FTAB_A_BASE;
        uint32_t img_addr  = (active_base == UART_OTA_SLOT_A_BASE)
                             ? UART_OTA_SLOT_B_BASE : UART_OTA_SLOT_A_BASE;
        const char *tname  = (active_base == UART_OTA_SLOT_A_BASE) ? "B" : "A";

        rt_kprintf("=== Verify inactive Slot %s ===\n", tname);
        rt_kprintf("ftab @ 0x%08lx, image @ 0x%08lx\n",
                   (unsigned long)ftab_addr, (unsigned long)img_addr);

        uint8_t buf[512];

        /* 1. Magic */
        if (rt_flash_read(ftab_addr, buf, 4) != 4) { rt_kprintf("FAIL: flash read\n"); return -1; }
        uint32_t magic = buf[0] | (buf[1]<<8) | (buf[2]<<16) | (buf[3]<<24);
        rt_kprintf("\n[1] ftab magic: 0x%08lx %s\n", (unsigned long)magic,
                   (magic == FTAB_MAGIC) ? "OK" : "BAD (expect 0x53454346)");
        if (magic != FTAB_MAGIC) return -1;

        /* 2. ftab[4] (HCPU partition) */
        if (rt_flash_read(ftab_addr + FTAB_FLASH4_OFF, buf, 16) != 16) { rt_kprintf("FAIL: read ftab[4]\n"); return -1; }
        {
            uint32_t base = buf[0]|(buf[1]<<8)|(buf[2]<<16)|(buf[3]<<24);
            uint32_t size = buf[4]|(buf[5]<<8)|(buf[6]<<16)|(buf[7]<<24);
            uint32_t xip  = buf[8]|(buf[9]<<8)|(buf[10]<<16)|(buf[11]<<24);
            uint32_t flg  = buf[12]|(buf[13]<<8)|(buf[14]<<16)|(buf[15]<<24);
            rt_kprintf("\n[2] ftab[4] (HCPU): base=0x%08lx size=0x%lx xip=0x%08lx flags=0x%lx\n",
                       (unsigned long)base, (unsigned long)size, (unsigned long)xip, (unsigned long)flg);
            rt_kprintf("    (bootloader overrides base to 0x%08lx for Slot %s)\n",
                       (unsigned long)img_addr, tname);
        }

        /* 3. running_imgs[CORE_HCPU=2] */
        if (rt_flash_read(ftab_addr + FTAB_RUNIMG_OFF + 2*4, buf, 4) != 4) { rt_kprintf("FAIL: read running_imgs\n"); return -1; }
        {
            uint32_t rp = buf[0]|(buf[1]<<8)|(buf[2]<<16)|(buf[3]<<24);
            rt_kprintf("\n[3] running_imgs[CORE_HCPU]: 0x%08lx", (unsigned long)rp);
            if (rp == 0xFFFFFFFF)
                rt_kprintf("  BAD (FLASH_UNINIT_32 -> bootloader skips this slot!)\n");
            else
                rt_kprintf("  OK\n");
        }

        /* 4. Image header at imgs[2] (HCPU) */
        if (rt_flash_read(ftab_addr + FTAB_IMG_OFFSET, buf, 296) != 296) { rt_kprintf("FAIL: read img hdr\n"); return -1; }
        {
            uint32_t img_len = buf[0]|(buf[1]<<8)|(buf[2]<<16)|(buf[3]<<24);
            uint16_t blksz   = buf[4]|(buf[5]<<8);
            uint16_t flags   = buf[6]|(buf[7]<<8);
            rt_kprintf("\n[4] Image header (imgs[2] @ ftab+0x%x):\n", FTAB_IMG_OFFSET);
            rt_kprintf("    length   = 0x%08lx (%lu bytes)\n", (unsigned long)img_len, (unsigned long)img_len);
            rt_kprintf("    blksize  = %u\n", (unsigned)blksz);
            rt_kprintf("    flags    = 0x%04x", (unsigned)flags);
            if (flags & 1) rt_kprintf(" [ENC]");
            if (flags & 2) rt_kprintf(" [AUTO]");
            rt_kprintf("\n");

            rt_kprintf("    key[0:7] = ");
            for (int i = 0; i < 8; i++) rt_kprintf("%02X", buf[8+i]);
            rt_kprintf("\n");
            rt_kprintf("    sig[0:7] = ");
            for (int i = 0; i < 8; i++) rt_kprintf("%02X", buf[40+i]);
            rt_kprintf("  sig[248:255] = ");
            for (int i = 0; i < 8; i++) rt_kprintf("%02X", buf[40+248+i]);
            rt_kprintf("\n");

            int key_all_zero = 1, sig_all_zero = 1;
            for (int i = 0; i < 32; i++) if (buf[8+i]) key_all_zero = 0;
            for (int i = 0; i < 256; i++) if (buf[40+i]) sig_all_zero = 0;
            if (key_all_zero) rt_kprintf("    WARNING: key is all-zero (no encrypted session key!)\n");
            if (sig_all_zero) rt_kprintf("    WARNING: sig is all-zero (no RSA signature!)\n");

            /* 5. sig_pub_key first 8 bytes */
            if (rt_flash_read(ftab_addr + FTAB_SIGKEY_OFF, buf, 8) == 8)
            {
                rt_kprintf("\n[5] sig_pub_key[0:7] = ");
                for (int i = 0; i < 8; i++) rt_kprintf("%02X", buf[i]);
                int pk_all_ff = 1;
                for (int i = 0; i < 8; i++) if (buf[i] != 0xFF) pk_all_ff = 0;
                if (pk_all_ff) rt_kprintf("  WARNING: all 0xFF (not injected!)");
                rt_kprintf("\n");
            }

            /* 6. First 16 bytes of Slot B image area (ciphertext) */
            if (rt_flash_read(img_addr, buf, 16) == 16)
            {
                rt_kprintf("\n[6] Image data[0:15] @ 0x%08lx = ", (unsigned long)img_addr);
                for (int i = 0; i < 16; i++) rt_kprintf("%02X", buf[i]);
                int all_ff = 1;
                for (int i = 0; i < 16; i++) if (buf[i] != 0xFF) all_ff = 0;
                if (all_ff) rt_kprintf("  WARNING: all 0xFF (erased / no image data!)");
                rt_kprintf("\n");
            }

            /* 7. CRC check on image region using length from header */
            if (img_len > 0 && img_len <= UART_OTA_SLOT_SIZE)
            {
                uint32_t c = crc_image(img_addr, img_len);
                rt_kprintf("\n[7] CRC32 of %lu bytes at 0x%08lx = 0x%08lx\n",
                           (unsigned long)img_len, (unsigned long)img_addr, (unsigned long)c);
            }
        }
        rt_kprintf("\n=== End verify ===\n");
    }
    else if (strcmp(argv[1], "status") == 0)
    {
        rt_kprintf("Slot A: img 0x%08lx  ftab 0x%08lx\n",
                   (unsigned long)UART_OTA_SLOT_A_BASE, (unsigned long)UART_OTA_FTAB_A_BASE);
        rt_kprintf("Slot B: img 0x%08lx  ftab 0x%08lx\n",
                   (unsigned long)UART_OTA_SLOT_B_BASE, (unsigned long)UART_OTA_FTAB_B_BASE);
        rt_kprintf("Slot size: 0x%lx  ftab size: 0x%lx\n",
                   (unsigned long)UART_OTA_SLOT_SIZE, (unsigned long)UART_OTA_FTAB_SIZE);
        {
            struct ab_persist st;
            ab_persist_load(&st);
            uint32_t ab_addr = ab_persist_addr();
            uint32_t active_base = get_active_slot_base();
            uint32_t target_base = pick_target_slot_base();
            rt_kprintf("ab_persist @ 0x%08lx: magic=0x%08lx active=%lu pending_try=0x%08lx commit=0x%08lx\n",
                       (unsigned long)ab_addr, (unsigned long)st.magic,
                       (unsigned long)st.active_slot, (unsigned long)st.pending_try, (unsigned long)st.commit);
            rt_kprintf("ACTIVE -> Slot %s\n", slot_name(active_base));
            rt_kprintf("Next OTA target: Slot %s (0x%08lx)\n", slot_name(target_base), (unsigned long)target_base);
        }
    }
    return 0;
}
MSH_CMD_EXPORT_ALIAS(cmd_uart_ota, uart_ota, UART OTA mode / Slot B download);
