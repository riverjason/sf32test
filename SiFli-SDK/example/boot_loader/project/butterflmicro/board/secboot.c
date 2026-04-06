#include <rtconfig.h>
#include <string.h>
#include <stdlib.h>
#include "register.h"
#include "../dfu/dfu.h"
#ifdef PKG_SIFLI_MBEDTLS_BOOT
    #include "mbedtls/cipher.h"
    #include "mbedtls/pk.h"
    #include "mbedtls/sha256.h"
#endif
#include "secboot.h"

/* out buf size must more than 32 byte */
int sifli_hash_calculate(uint8_t *in, uint32_t in_size, uint8_t *out, uint8_t algo)
{
    int last, i;

    if (!in || !in_size || !out || algo > 3)
        return -1;

    HAL_HASH_reset();
    HAL_HASH_init(NULL, algo, 0);

    if (in_size > SPLIT_THRESHOLD)
    {
        for (i = 0; i < in_size; i += SPLIT_THRESHOLD)
        {
            last = (i + SPLIT_THRESHOLD >= in_size) ? 1 : 0;
            if (i > 0)
            {
                HAL_HASH_reset();
                HAL_HASH_init((uint32_t *)out, algo, last ? i : 0);
            }
            HAL_HASH_run(&in[i], last ? in_size - i : SPLIT_THRESHOLD, last);
            HAL_HASH_result(out);
        }
        HAL_HASH_result(out);
    }
    else
    {
        HAL_HASH_run(in, in_size, 1);
        HAL_HASH_result(out);
    }

    return 0;
}

int sifli_hash_verify(uint8_t *data, uint32_t data_size, uint8_t *hash, uint32_t hash_size)
{
    uint8_t hash_out[32] = {0};

    if (!data || !hash)
        return -1;

    if (sifli_hash_calculate(data, data_size, hash_out, HASH_ALGO_SHA256))
        return -1;

    if (memcmp(hash_out, hash, hash_size))
        return -1;

    return 0;
}

int sifli_sigkey_pub_verify(uint8_t *sigkey, uint32_t key_size)
{
    uint32_t size = 0;

    uint8_t sigkey_hash[DFU_SIG_HASH_SIZE] = {0};
    size = sifli_hw_efuse_read(EFUSE_ID_SIG_HASH, sigkey_hash, DFU_SIG_HASH_SIZE);
    if (size == DFU_SIG_HASH_SIZE)
        return sifli_hash_verify(sigkey, key_size, sigkey_hash, DFU_SIG_HASH_SIZE);
    else
        return -1;
}

#ifdef PKG_SIFLI_MBEDTLS_BOOT
static void dbg_sig_hex(const char *tag, const uint8_t *buf, int len)
{
    static const char hx[] = "0123456789ABCDEF";
    char tmp[80];
    int p = 0;
    while (*tag && p < 60) tmp[p++] = *tag++;
    for (int i = 0; i < len && p < 76; i++) {
        tmp[p++] = hx[buf[i] >> 4];
        tmp[p++] = hx[buf[i] & 0xF];
    }
    tmp[p++] = '\r'; tmp[p++] = '\n';
    boot_uart_tx((void *)hwp_usart1, (uint8_t *)tmp, p);
}

int sifli_img_sig_hash_verify(uint8_t *img_hash_sig, uint8_t *sig_pub_key, uint8_t *image, uint32_t img_size)
{
    uint8_t img_hash[32] = {0};
    mbedtls_pk_context pk;
    int rc;

    {
        static const char hx[] = "0123456789ABCDEF";
        char lbuf[20];
        int lp = 0;
        lbuf[lp++]='L'; lbuf[lp++]='N'; lbuf[lp++]='=';
        for (int s = 28; s >= 0; s -= 4)
            lbuf[lp++] = hx[(img_size >> s) & 0xF];
        lbuf[lp++] = '\r'; lbuf[lp++] = '\n';
        boot_uart_tx((void *)hwp_usart1, (uint8_t *)lbuf, lp);
    }

    mbedtls_sha256(image, img_size, img_hash, 0);
    dbg_sig_hex("SH:", img_hash, 16);

    mbedtls_pk_init(&pk);
    rc = mbedtls_pk_parse_public_key(&pk, sig_pub_key, DFU_SIG_KEY_SIZE);
    if (rc) {
        static const char hx[] = "0123456789ABCDEF";
        char ebuf[16];
        int ep = 0;
        uint32_t urc = (uint32_t)(-rc);
        ebuf[ep++]='E'; ebuf[ep++]='1'; ebuf[ep++]='=';
        for (int s = 12; s >= 0; s -= 4)
            ebuf[ep++] = hx[(urc >> s) & 0xF];
        ebuf[ep++] = '\r'; ebuf[ep++] = '\n';
        boot_uart_tx((void *)hwp_usart1, (uint8_t *)ebuf, ep);
        return -1;
    }
    mbedtls_rsa_set_padding((mbedtls_rsa_context *)pk.pk_ctx, MBEDTLS_RSA_PKCS_V15, MBEDTLS_MD_SHA256);
    rc = mbedtls_pk_verify(&pk, MBEDTLS_MD_SHA256, img_hash, DFU_IMG_HASH_SIZE, img_hash_sig, DFU_SIG_SIZE);
    if (rc) {
        static const char hx[] = "0123456789ABCDEF";
        char ebuf[16];
        int ep = 0;
        uint32_t urc = (uint32_t)(-rc);
        ebuf[ep++]='E'; ebuf[ep++]='2'; ebuf[ep++]='=';
        for (int s = 12; s >= 0; s -= 4)
            ebuf[ep++] = hx[(urc >> s) & 0xF];
        ebuf[ep++] = '\r'; ebuf[ep++] = '\n';
        boot_uart_tx((void *)hwp_usart1, (uint8_t *)ebuf, ep);
        return -1;
    }

    return 0;
}
#endif

void sifli_secboot_exception(uint8_t excpt)
{
    char *err = NULL;

    switch (excpt)
    {
    case SECBOOT_SIGKEY_PUB_ERR:
        err = "secboot sigkey pub err!";
        boot_uart_tx(hwp_usart1, (uint8_t *)err, strlen(err));
        break;
    case SECBOOT_IMG_HASH_SIG_ERR:
        err = "secboot img hash sig err!";
        boot_uart_tx(hwp_usart1, (uint8_t *)err, strlen(err));
        break;
    default:
        err = "secboot excpt null!";
        boot_uart_tx(hwp_usart1, (uint8_t *)err, strlen(err));
        break;
    }

    HAL_sw_breakpoint();
}
