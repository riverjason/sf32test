# SF32LB52 安全启动与安全 OTA 升级说明

> 适用工程：`ex1`（SF32LB52X + RT-Thread + SiFli SDK 2.4）
> 构建入口：`ex1\make.bat`

---

## 目录

1. [整体架构概览](#1-整体架构概览)
2. [密钥体系](#2-密钥体系)
3. [eFuse 与信任根](#3-efuse-与信任根)
4. [Flash 分区布局](#4-flash-分区布局)
5. [固件构建流程](#5-固件构建流程)
6. [签名与加密过程（imgtool enc_static）](#6-签名与加密过程imgtool-enc_static)
7. [产物文件说明](#7-产物文件说明)
8. [安全启动流程（Bootloader）](#8-安全启动流程bootloader)
9. [UART OTA 升级流程](#9-uart-ota-升级流程)
10. [A/B 槽切换与回退机制](#10-ab-槽切换与回退机制)

---

## 1. 整体架构概览

```
┌─────────────────────────────────────────────────────────────────┐
│                        PC 端 (离线)                             │
│                                                                 │
│  main.bin ──┐                                                   │
│             ├─ imgtool.py enc_static ──► image_sec.bin (密文)   │
│  ftab.bin ──┘         │                  ftab_sec.bin  (含密钥) │
│                       │                         │               │
│                       │                    合并  ▼               │
│               密钥文件:                  ota_pkg.bin             │
│               s01.bin (ROOT_KEY)         [SFOT][ftab][image]    │
│               sig_pri.pem (RSA 私钥)                            │
│               sig_pub.der (RSA 公钥)                            │
│               sig_hash.bin (公钥 SHA256)                        │
└─────────────────────────────────────────────────────────────────┘
                              │
            ┌─────────────────┴──────────────────┐
            │ 初次烧录 (sftool)                  │ OTA 升级 (ota_tool.py)
            ▼                                    ▼
┌───────────────────────┐          ┌──────────────────────────┐
│  Flash                │          │ UART 串口协议            │
│  ftab_A + image_A     │          │ image → 非活跃 Slot      │
│  Bootloader           │          │ ftab  → 非活跃 ftab      │
│  eFuse: ROOT_KEY      │          │ REBOOT → Bootloader      │
│         SIG_HASH      │          │         验签解密启动     │
│         SECURE_FLAG   │          └──────────────────────────┘
└───────────────────────┘
```

信任链：**eFuse(不可篡改) → 公钥校验 → 签名验证 → 解密执行**

---

## 2. 密钥体系

本工程使用以下密钥文件（位于 `ex1\secboot\keys\`）：

| 文件 | 类型 | 用途 |
|------|------|------|
| `s01.bin` | AES-256 对称密钥 (32B) | **ROOT_KEY**，用于加密 session_key；烧入 eFuse Bank3 |
| `sig_pri.pem` | RSA-2048 私钥 | 对明文镜像做 PKCS#1 v1.5 签名（离线保密，不上设备） |
| `sig_pub.pem` | RSA-2048 公钥 (PEM) | 导出 DER 和 hash 的源 |
| `sig_pub.der` | RSA-2048 公钥 (DER) | 嵌入 ftab，Bootloader 用它验签 |
| `sig_hash.bin` | SHA-256 (32B) | `sig_pub.der` 的哈希；前 8 字节用作 AES-CBC IV 和 AES-CTR 计数器前缀；烧入 eFuse Bank0 |

**关键原则：**
- `sig_pri.pem`（私钥）永远不出离线 PC；设备只需公钥 + eFuse 里的 hash 即可完成验证。
- 加密 session_key 的 AES-CBC IV 使用 SIG_HASH（前 8B + 8B 零填充），**不依赖芯片 UID**。
- 同一份加密固件可烧录到所有共享相同 ROOT_KEY 和 SIG_HASH 的芯片上。

---

## 3. eFuse 与信任根

SF32LB52X eFuse 共 4 bank × 32 bytes = 128 bytes（OTP，只能 0→1）：

| Bank | 位偏移 | 字段 | 说明 |
|------|--------|------|------|
| 0 | bit 0-127 (byte 0-15) | **UID** (16B) | 芯片唯一标识，工厂预烧、每片不同（本方案不用于加密） |
| 0 | bit 128-191 (byte 16-23) | **SIG_HASH** (8B) | RSA 公钥 SHA256 前 8 字节，用作 AES-CBC IV 和 AES-CTR 计数器前缀 |
| 0 | bit 192-223 (byte 24-27) | **SECURE_FLAG** (4B) | bit0=1 表示启用安全启动 |
| 1-2 | | 保留 | 可做测试写入 |
| 3 | bit 768-1023 (byte 96-127) | **ROOT_KEY** (32B) | AES-256 根密钥（写入后 CPU 无法读回） |

Bootloader 的验证依赖：
- **SIG_HASH**：与 ftab 里公钥的 SHA256 比对 → 确认公钥未被篡改
- **ROOT_KEY**：硬件自动用于 XIP 解密 → 只有硬件能访问

---

## 4. Flash 分区布局

```
地址            大小     内容
────────────────────────────────────────
0x12000000     32 KB    ftab_A (Flash Table A，含公钥 + image header + 签名)
0x12008000     32 KB    ftab_B (Flash Table B，OTA 时写到这里)
0x12010000     64 KB    Bootloader (不参与 OTA，独立烧录)
0x12020000      4 MB    Slot A (应用镜像，XIP 执行)
0x12420000      4 MB    Slot B (OTA 目标槽)
0x12820000     ...      DFU / KVDB / FS 等
0x12880000      4 KB    A/B 持久化标记 (struct ab_persist, magic "ABPS")
```

每个 Slot 最后 4KB (`0x003FF000`) 保留给 `uart_ota_meta`，记录镜像长度和 CRC。

---

## 5. 固件构建流程

通过 `make.bat` 一条龙完成：

```
make.bat                ← 默认执行 build + sign + flash
make.bat build sign     ← 编译 + 签名加密打包
make.bat sign flash     ← 签名 + 烧录 (已编译过)
make.bat build          ← 仅编译
make.bat sign           ← 仅签名加密打包
make.bat flash          ← 仅烧录安全镜像
```

> 加密不依赖芯片 UID，同一份加密固件可烧录到所有同 ROOT_KEY + SIG_HASH 的芯片。

### Step 1: build（SCons 编译）

```
SCons --board=sf32lb52-lcd_n16r8_test -j12
  ├── bootloader.bin    (64KB 区，Bootloader)
  ├── main.bin          (应用镜像，明文)
  └── ftab/ftab.bin     (Flash Table，含分区信息 + image header 模板)
```

### Step 2: sign（imgtool enc_static）

```
imgtool.py enc_static
  输入: main.bin, ftab.bin, s01.bin, sig_pri.pem, sig_pub.der, sig_hash.bin
  输出: image_sec.bin (296B header + 密文)
        enc_ftab.bin  → 复制为 ftab_sec.bin
  后处理:
    image_sec.bin 去掉前 296 字节 (header 已在 ftab 里)
    合并为 ota_pkg.bin = [SFOT头][ftab_sec][image_sec]
```

### Step 3: flash（sftool 烧录）

```
sftool write_flash --verify
  bootloader.bin  @ 0x12010000
  image_sec.bin   @ 0x12020000
  ftab_sec.bin    @ 0x12000000
```

---

## 6. 签名与加密过程（imgtool enc_static）

这是安全机制的核心，在 `SiFli-SDK/tools/secureboot/imgtool.py` 的
`encrypt_image_help_static()` 中完成：

### 6.1 输入准备

```
main.bin        → 补零到 16 字节对齐 → data (明文镜像)
s01.bin         → recipient_key (32B ROOT_KEY)
sig_hash.bin    → 前 8 字节作为 AES-CBC IV 和 AES-CTR 计数器前缀
sig_pri.pem     → RSA-2048 私钥
sig_pub.der     → RSA-2048 公钥 (DER 格式)
ftab.bin        → Flash Table 二进制模板
```

### 6.2 构造 296 字节 image header

```
偏移    长度    字段                    说明
─────────────────────────────────────────────────────
0       4       img_len                 对齐后镜像长度 (小端)
4       2       bksize                  AES-CTR 分块大小 (512)
6       2       flags                   标志位 (3 = 加密+签名)
8       32      enc_session_key         AES-CBC(ROOT_KEY, SIG_HASH_IV) 加密后的随机 session_key
40      256     RSA_signature           对 明文data 的 SHA256 做 PKCS#1 v1.5 签名
─────────────────────────────────────────────────────
合计    296 字节
```

**签名对象是明文镜像**：Bootloader 解密后在 XIP 上看到明文，再验签。

### 6.3 session_key 的加密

```
session_key (随机 32B)
    │
    ▼
AES-256-CBC(key=ROOT_KEY, iv=SIG_HASH[0:8]+8B_zero)
    │
    ▼
enc_session_key (32B) → 存入 header[8:40]
```

Bootloader 解密路径：从 eFuse 读 ROOT_KEY 和 SIG_HASH，构造 IV = SIG_HASH(8B) + 0x00×8，
AES-CBC 解密得到 session_key。**不依赖芯片 UID，所有同密钥芯片可共享同一份加密固件。**

### 6.4 镜像加密

```
明文 data
    │
    ▼
AES-256-CTR(key=session_key, counter_prefix=sig_hash[0:8]+4B_zero)
    │  按 bksize(512) 分块加密
    ▼
密文 data3
```

### 6.5 公钥和 header 注入 ftab

ftab 二进制内有预留槽位：

```
ftab 偏移          写入内容
──────────────────────────────────────
SIG_OFFSET (260)   RSA 公钥 (sig_pub.der, ~294B)
IMG_OFFSET (5120)  完整 296B header (含 enc_session + RSA 签名)
```

输出 `enc_ftab.bin`，即最终的 `ftab_sec.bin`。

### 6.6 去头 + 合并 OTA 包

```
image_sec.bin 原始 = [296B header] + [密文]
                          ↓ 去掉 (header 已在 ftab 里)
image_sec.bin 最终 = [密文]

ota_pkg.bin = [SFOT(4B)][ver(4B)][ftab_size(4B)][img_size(4B)]
              [ftab_sec.bin 全部内容]
              [image_sec.bin 全部内容(仅密文)]
```

---

## 7. 产物文件说明

| 文件 | 位置 | 内容 |
|------|------|------|
| `bootloader.bin` | `build_*_hcpu/bootloader/` | Bootloader，含验签+解密+A/B启动逻辑 |
| `main.bin` | `build_*_hcpu/` | 明文应用镜像 |
| `ftab.bin` | `build_*_hcpu/ftab/` | 原始 Flash Table |
| `image_sec.bin` | `secboot/out/` | 加密后的应用密文（已去 296B 头） |
| `ftab_sec.bin` | `secboot/out/` | 安全 ftab（含 RSA 公钥 + image header + 签名） |
| `ota_pkg.bin` | `secboot/out/` | 完整 OTA 升级包 = ftab_sec + image_sec |
| `ota_pkg_plain.bin` | `secboot/out/` | 未加密未签名的测试包（bootloader 应拒绝） |

---

## 8. 安全启动流程（Bootloader）

Bootloader 位于 `SiFli-SDK/example/boot_loader/project/butterflmicro/board/main.c`。

### 8.1 上电 → 选槽

```
1. 读 eFuse Bank0 (UID / SIG_HASH / SECURE_FLAG)
2. 检查 RTC Backup 寄存器:
   ├── TRY_B (0x54525942)? → 清 TRY, 置 COMMIT_B, 优先启动 Slot B
   ├── TRY_A (0x54525941)? → 清 TRY, 置 COMMIT_A, 优先启动 Slot A
   └── 否则: 按 ACTIVE 或 Flash 持久化标记 (ABPS) 选槽
3. 初始化 PSRAM
4. try_boot_from_slot(优先槽)
5. 若失败 → 清 COMMIT → try_boot_from_slot(另一槽)
```

### 8.2 try_boot_from_slot 详细流程

```
读取对应 ftab (ftab_A @ 0x12000000 或 ftab_B @ 0x12008000)
    │
    ├── 校验 ftab magic
    │
    ├── 从 ftab 取出:
    │   ├── sig_pub_key  (RSA 公钥, DER)
    │   └── image header (296B: img_len, bksize, flags, enc_session, signature)
    │
    ├── 若 flags & DFU_FLAG_ENC (已加密):
    │   │
    │   ├── 读 eFuse Bank3 → ROOT_KEY (硬件级)
    │   │
    │   ├── sifli_hw_init_xip_key(enc_session_key)
    │   │   └── 硬件用 ROOT_KEY + SIG_HASH_IV 解密 → session_key
    │   │
    │   ├── HAL_FLASH_NONCE_CFG  → 配置 AES-CTR 计数器 (与签名时一致)
    │   ├── HAL_FLASH_ALIAS_CFG  → Flash 别名映射 (物理→XIP)
    │   ├── HAL_FLASH_AES_CFG(1) → 开启硬件实时解密
    │   │   └── 此后 CPU 通过 XIP 读到的是明文
    │   │
    │   └── secboot_verify_before_run():
    │       │
    │       ├── (1) 验证公钥:
    │       │   SHA256(sig_pub_key) == eFuse.SIG_HASH ?
    │       │   └── 失败 → 输出 "SFBLpubkey fail"
    │       │
    │       └── (2) 验证签名:
    │           RSA_verify(signature, sig_pub_key, SHA256(XIP明文))
    │           └── 失败 → 输出 "SFBLsig fail"
    │
    └── 验证通过 → run_img(XIP地址)
        └── 设 SP, 跳转 PC → 应用开始执行
```

### 8.3 关键安全保障

| 攻击场景 | 防御措施 |
|----------|----------|
| 替换公钥 → 用自己私钥签名 | 公钥 SHA256 与 eFuse 里的 SIG_HASH 比对，eFuse 不可改 |
| 篡改密文 | 解密后验签必然失败 |
| 替换整个 ftab | ftab 内公钥不匹配 eFuse hash |
| 降级旧固件 | 若旧固件 session_key 不同，解密结果不对，签名不通过 |
| 直接读 ROOT_KEY | eFuse Bank3 写入 + SECURE_FLAG 后 CPU 不可读，仅硬件 AES 引擎可访问 |

---

## 9. UART OTA 升级流程

### 9.1 OTA 包格式

```
偏移    长度       内容
───────────────────────────────────
0       4          Magic "SFOT" (0x53464F54)
4       4          Version (1)
8       4          ftab_size (ftab_sec.bin 字节数)
12      4          img_size  (image_sec.bin 字节数，仅密文)
16      ftab_size  ftab_sec.bin 全部内容
16+f    img_size   image_sec.bin 全部内容 (密文，无 296B 头)
```

### 9.2 串口协议

- 波特率：1,000,000 bps
- 帧格式：`[0x55 0xAA] [cmd 1B] [len 2B LE] [seq 2B] [payload 0~512B] [CRC32 4B]`

| 命令 | 代码 | 方向 | Payload |
|------|------|------|---------|
| HELLO | 0x01 | PC→MCU | 无 |
| ERASE | 0x02 | PC→MCU | 无（擦除当前 target 区域） |
| DATA | 0x03 | PC→MCU | offset(4B LE) + data(最多 504B) |
| FINISH | 0x04 | PC→MCU | total_size(4B) + crc32(4B) |
| ABORT | 0x05 | PC→MCU | 无 |
| REBOOT | 0x06 | PC→MCU | 无 |
| TARGET | 0x07 | PC→MCU | base_addr(4B) + region_size(4B) |
| RSP | 0x80\|cmd | MCU→PC | status(1B) + extra(...) |

每条 DATA 的有效数据最多 **504 字节**，每收到一条即写一次 Flash。

### 9.3 PC 端工具完整流程 (ota_tool.py)

```
1. 解析 ota_pkg.bin → 分离出 ftab_data 和 img_data

2. 打开串口, 发送 "uart_ota start\r\n"
   └── 设备替换 UART RX 回调为 OTA 帧解析器

3. HELLO → 设备返回: 非活跃槽地址, 最大镜像, 每帧上限, 非活跃 ftab 地址
   例如: Slot B = 0x12420000, ftab_B = 0x12008000

4. Phase 1: 写 image 到非活跃 Slot (占进度 0%~70%)
   ├── ERASE (擦除整个 4MB Slot，约数十秒)
   ├── 循环 DATA: 每次 504 字节 + 4 字节偏移，等待 RSP
   │   └── 设备: flash_write_at(slot_base + offset, data, len)
   └── FINISH: 发送 total_size + CRC32
       └── 设备: 读回整段 Flash 计算 CRC32 校验
           └── 通过后写入 meta (magic + size + crc) 到 Slot 尾 4KB

5. Phase 2: 写 ftab 到非活跃 ftab 区 (占进度 70%~95%)
   ├── TARGET → 切换写入目标为 ftab_B (0x12008000, 32KB)
   ├── ERASE (擦除 32KB ftab 区)
   ├── 循环 DATA: 同上
   └── FINISH: CRC32 校验

6. Phase 3: 重启 (95%~100%)
   └── REBOOT
       └── 设备: 设置 RTC Backup[8] = TRY_B → HAL_PMU_Reboot()
```

### 9.4 为什么先写 image 后写 ftab

ftab 是 Bootloader 的"入口配置"。如果先写 ftab 后写 image，在 image 写到一半
断电的情况下，Bootloader 读到新 ftab 却找不到完整镜像，可能无法启动。

**先写 image → 再写 ftab** 保证：只有 image 完整落盘后，ftab 才指向它。

---

## 10. A/B 槽切换与回退机制

### 10.1 状态寄存器

使用 RTC Backup Register 维护启动状态（掉电不丢失）：

| 寄存器下标 | 名称 | 取值 | 含义 |
|-----------|------|------|------|
| 9 | ACTIVE | "ACTA" / "ACTB" | 当前确认的活跃槽 |
| 8 | TRY | "TRYA" / "TRYB" | 一次性试启动目标 |
| 7 | COMMIT | "CMTA" / "CMTB" | Bootloader 置位，应用消费 |

Flash 持久化（冷启动参考）：

| 地址 | 结构 | 含义 |
|------|------|------|
| 0x12880000 | `{magic="ABPS", active_slot=0/1}` | 长期记忆活跃槽 |

### 10.2 OTA 后的启动时序

```
                     OTA 写入完成
                          │
                     设置 TRY=TRY_B
                          │
                     PMU Reboot
                          │
                          ▼
              ┌─── Bootloader 启动 ───┐
              │                       │
              │  读到 TRY=TRY_B       │
              │  清除 TRY             │
              │  设置 COMMIT=COMMIT_B │
              │  尝试从 Slot B 启动   │
              │    ├── 读 ftab_B      │
              │    ├── 解密 image_B   │
              │    ├── 验签           │
              │    └── 成功?          │
              │         │             │
              │    ┌────┴────┐        │
              │   Yes       No        │
              │    │         │        │
              │    ▼         ▼        │
              │ run_img   清 COMMIT   │
              │ (Slot B)  尝试 Slot A │
              └───────────────────────┘
                    │
                    ▼
         ┌─── 应用启动 (uart_ota_init) ───┐
         │                                 │
         │  检测到 COMMIT=COMMIT_B         │
         │    → 设置 ACTIVE=ACTIVE_B       │
         │    → 清除 COMMIT                │
         │    → Flash 持久化 (ABPS)        │
         │    → 升级确认完成               │
         └─────────────────────────────────┘
```

### 10.3 回退场景

| 场景 | 结果 |
|------|------|
| 新固件启动成功 | 应用 `uart_ota_init` 确认 → ACTIVE 切到新槽 |
| 新固件验签失败 | Bootloader 清 COMMIT，回退到旧槽启动 |
| 新固件启动后崩溃（未执行 uart_ota_init） | 下次启动 COMMIT 仍在但 ACTIVE 未变，仍从旧槽启动 |
| OTA 中途断电（image 写了一半） | ftab 未更新 → Bootloader 仍用旧 ftab → 启动旧槽 |
| OTA ftab 写了一半 | 新 ftab magic 不对 → try_boot_from_slot 返回 -1 → 回退旧槽 |

---

## 附：安全相关命令速查

### 构建 & 烧录

```bat
make.bat                :: 编译 + 签名 + 烧录 (默认全流程)
make.bat build sign     :: 编译 + 签名，不烧录
make.bat sign flash     :: 签名 + 烧录 (已编译过)
make.bat plain          :: 生成未签名测试包
make.bat clean          :: 清理构建目录
```

### 串口命令 (MSH)

```
efuse info                  :: 查看 UID / SIG_HASH / SECURE_FLAG / ROOT_KEY
efuse dump                  :: 转储所有 eFuse bank
uart_ota status             :: 查看 A/B 槽状态
uart_ota start              :: 进入 OTA 接收模式
uart_ota reboot             :: 设置试启动并重启
cmd_reboot                  :: 软复位
```
