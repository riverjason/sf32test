# SF32 OTA 问答延续记录

最后更新：2026-04-07  
工程路径：`d:\dev\sf32\efuse1`  
分支：`efusePass`

## 使用说明（到新电脑后）

1. 先把这个仓库拉到新电脑。  
2. 把本文件发给 AI，说明“请基于此记录继续排查”。  
3. 优先带上最新串口日志（从上电第一行开始）。  

---

## 问答时间线（用户提问 -> 处理结果）

### 1) 问：`make.bat flash` 后 OTA 升级失败，开始不了
- 答：排查到两类风险：
  - `ab_persist` 地址放在下载区内，可能被覆盖。
  - OTA 工具发送 `uart_ota start` 后等待太短，HELLO 可能超时。
- 处理：调整 OTA 工具进入时序（等待 OTA banner），并补充启动/擦写日志。

### 2) 问：`make.bat flash` 烧的是不是签名加密后的固件？
- 答：`flash` 会烧 `image_sec.bin` 和 `ftab_sec.bin`（签名/加密产物），bootloader 则烧 `bootloader.bin`。  
- 说明：单独跑 `flash` 不会自动 `sign`，缺文件会报错。

### 3) 问：OTA 工具显示成功，但重启后板卡像卡住
- 答：工具“成功”只代表写入与协议完成，不保证 bootloader 验签和应用启动成功。  
- 需要看上电日志判断是 bootloader 阶段还是 app 阶段。

### 4) 问：重上电只打印 `SFBL`
- 答：`SFBL` 是 BootROM 启动标记；后续无输出说明二级 bootloader 未继续或很早卡死。  
- 开始在 bootloader 增加阶段诊断打印。

### 5) 问：全量烧录后仍一样
- 答：继续加细粒度启动标记（`BL:*`, `BH:*`, `TS:*`）定位卡点。

### 6) 问：日志为 `SFBL BL:S BS:3 BL:F BH:0`
- 答：定位到 `boot_images_help()` 早期路径（`ab_persist` 相关）发生卡死。  
- 处理：临时绕过/防护后，先恢复可进 app。

### 7) 问：后续日志可到 app（已进入 `msh />`）
- 答：启动主链路恢复成功。  
- 继续收敛 `ab_persist` 位置与读写时机，避免 OTA 后重启再次卡死。

### 8) 问：请求提交代码，备注“ota不使用rtc的bkp寄存器”
- 答：已提交并推送。
- 提交：
  - commit: `216b4e59`
  - 分支：`efusePass`
  - 已 push 到 `origin/efusePass`
  - 备注已包含“ota不使用rtc的bkp寄存器”

### 9) 问：如何全片擦除？
- 答：给出 `sftool` 命令（`erase_flash` / `erase_region`）。

### 10) 问：要一个脚本可直接全片擦除
- 答：新增脚本 `ex1/erase_full_flash.bat`，支持一键擦除并自动回退到 `erase_region`。

### 11) 问：新建文档记录每次提问和解答
- 答：本文件即该记录。

---

## 当前关键技术结论

- OTA A/B 状态不再依赖 RTC BKP 寄存器，改为 Flash 持久化。
- 出现“`SFBL` 后卡死”通常在 bootloader 早期，需看 `BL/BH/TS` 诊断串口输出。
- 曾出现的核心问题是：`ab_persist` 地址/时机导致早期阶段不稳定（读写都可能触发卡死）。

---

## 当前代码状态说明（重要）

- 已推送的提交：`216b4e59`（包含 OTA 不使用 RTC BKP 的主改动）。
- 本地额外新增（未确认是否已提交）：
  - `ex1/erase_full_flash.bat`
- 若在新电脑继续，建议先执行：
  1. `git status`
  2. `git log --oneline -n 5`
  3. 确认是否已包含 `erase_full_flash.bat`

---

## 常用命令（排障/恢复）

- 构建：`make.bat build`
- 签名：`make.bat sign`
- 烧录：`make.bat flash`
- 全片擦除脚本：`erase_full_flash.bat` 或 `erase_full_flash.bat COM9`
- 串口排障关注：
  - BootROM: `SFBL`
  - Bootloader: `BL:* / BH:* / TS:*`
  - App: `msh />` 与 `[uart_ota] ACTIVE slot ...`

---

## 给下一次提问的模板

可直接复制：

> 我在 `efusePass` 分支，参考 `ex1/doc/qa_handoff_log.md`。  
> 当前现象：`(粘贴最新完整串口日志)`。  
> 我刚执行了：`(build/sign/flash/ota 操作步骤)`。  
> 请基于历史记录继续定位，并给出最小改动修复方案。

