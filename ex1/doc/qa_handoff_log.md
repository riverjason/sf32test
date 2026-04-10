# SF32 OTA 问答延续记录

最后更新：2026-04-09  
工程路径：`d:\dev\otaMerge\sf32test\ex1`  
工作区：`d:\dev\otaMerge`  
Git：工作区根目录当前不是 git repo

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

### 12) 问：直接给你写一个最小可用的 `ble_ota_tool.py`

- 答：已新增 `ex1/ota_tool/ble_ota_tool.py`，提供最小可用 BLE OTA CLI。
- 处理：支持 `--scan`、`--name`、`--address`、`--file`，复用 `uart_ota` 帧协议发送 `HELLO/ERASE/DATA/FINISH/TARGET/REBOOT`。

### 13) 问：如何测试，请自动化完成

- 答：已补齐主机侧自动化测试。
- 处理：新增 `ble_ota_tool.py --self-test`、`ex1/ota_tool/test_ble_ota_tool.py`、`ex1/ota_tool/run_ble_ota_selftest.bat`。
- 验证：Mock BLE 自检、`python -m unittest`、批处理一键测试均通过。

### 14) 问：需要先烧录固件吗；请帮我烧录并自动化测试到底

- 答：需要先烧支持 BLE OTA 的新固件；随后已代为完成构建、签名、烧录和串口验证。
- 处理：
  - 发现 `sf32test/SiFli-SDK` 缺 `tools/build`，改用 `sf32test` 板级 + `CallMate/SiFli-SDK/tools/build` 的混合环境完成编译。
  - 生成 `image_sec.bin`、`ftab_sec.bin`、`ota_pkg.bin`，并通过 `sftool` 烧录到 `COM6`。
  - 安装 `bleak`，恢复 PC 端 BLE 工具依赖。
- 验证：
  - 串口可正常进入 `msh />`
  - `cmd_ble ota_status` 返回 `BLE OTA: IDLE`
  - `cmd_ble adv_start` 返回 `Advertising started`

### 15) 问：蓝牙开始广播后其他设备能否扫描到，名称是什么

- 答：可以；广播名规则是 `SF32_DEV-xxxxxx`，退化情况为 `SF32_DEV`。
- 处理：根据 `main.c` 中 `ble_get_public_address()` 的结果确认名称拼接规则。
- 验证：PC 实扫到当前设备名为 `SF32_DEV-000b7a`，地址为 `5C:FD:52:00:0B:7A`。

### 16) 问：继续把 BLE OTA 跑完，并改成未连接红色呼吸、连接后绿色呼吸

- 答：已完成灯效修改，并实际跑通一次真机 BLE OTA。
- 处理：
  - 在 `ex1/rtt/src/main.c` 中改为：未连接红色呼吸，连接后绿色呼吸。
  - 在 `ex1/rtt/src/uart_ota.c` 中修复 BLE OTA 回包被 `s_uart` 误拦截的问题。
  - 在 `ex1/ota_tool/ble_ota_tool.py` 中增加 Windows/Bleak 下 UUID 自动识别，并将写入策略调为更稳的 `write with response` 优先。
- BLE OTA 实测：
  - 成功连接 `SF32_DEV-000b7a`
  - `HELLO` 成功
  - `image` 与 `ftab` 均传输完成且 `FINISH` 校验成功
  - 最后 `REBOOT` 时 PC 端先感知 BLE 断连，但设备端已完成切槽
- 串口复核：
  - `uart_ota status` 显示 `ACTIVE -> Slot B`
  - `Next OTA target: Slot A (0x12020000)`

### 17) 问：添加 rules，不用每次手动提示；每次提问和回答都记录在文档

- 答：已新增仓库级 Cursor 规则，后续会自动维护本日志。
- 处理：新增 `.cursor/rules/qa-handoff-log.mdc`，规则设为 `alwaysApply: true`，要求在实质性处理后同步更新 `ex1/doc/qa_handoff_log.md`。

### 18) 问：RGB 呼吸灯高亮时频繁闪烁，亮度太刺眼；OTA 接收过程中增加快速闪烁叠加效果

- 答：已修正亮度算法溢出导致的高亮闪烁，并将峰值亮度下调到原目标的一半左右；OTA 接收时会在呼吸基础上叠加快速闪烁。
- 处理：
  - `ex1/rtt/src/main.c` 中将亮度计算改为固定峰值 `SK6812_MAX_LEVEL=18` 的二次呼吸，不再使用会溢出的旧乘法链。
  - 新增 OTA 指示逻辑：`uart_ota_ble_mode_active()` 为真时，在呼吸亮度上叠加快速明暗切换；非 OTA 状态仅保留呼吸。
  - 颜色规则保持不变：未连接红色呼吸，已连接绿色呼吸。
- 结论：此前“越亮越闪”的主因是 8 位颜色值在高亮区发生数值回绕，不是 BLE 本身导致。
- 验证：
  - 重新编译、签名并烧录到 `COM6`
  - 串口检查通过，应用启动正常，`cmd_ble ota_status` 正常，广播可重新启动

### 19) 问：还是很亮眼，而且没有收 OTA 包的时候还是会闪烁
- 答：已继续降低常态亮度，并把快闪触发条件改成“最近真的收到 OTA 数据包”。
- 处理：
  - `SK6812_MAX_LEVEL` 从 `18` 进一步降到 `8`
  - 新增 `g_led_ota_flash_until_tick`，仅在 `app_ble_ota_enqueue()` 收到 OTA 数据后维持约 `180ms` 快闪窗口
  - `app_ble_ota_reset()` 会清空快闪状态，避免 OTA 结束后残留闪烁
- 结论：非 OTA 状态现在应只剩普通呼吸；只有接收 OTA 包的短时间窗口内才会快速闪烁。
- 验证：
  - 重新编译、签名并烧录到 `COM6`

### 20) 问：还是这么亮，而且还是在闪烁，请先解决这些问题
- 答：已进一步把常态峰值压到极低亮度，并把 OTA 快闪限制为“必须 OTA 会话活跃且最近收到 OTA 包”。
- 处理：
  - `SK6812_MAX_LEVEL` 继续从 `8` 降到 `2`
  - `SK6812_OTA_FLASH_DIM` 降到 `0`
  - `SK6812_OTA_FLASH_HOLD_MS` 从 `180ms` 缩短到 `60ms`
  - 快闪条件增加 `uart_ota_ble_mode_active()` 限制，避免非 OTA 状态误触发
- 验证：
  - 重新编译、签名并烧录到 `COM6`

### 21) 问：现在灯效并没有任何改变
- 答：根因已确认，不是这轮参数没生效，而是设备仍在运行旧的 `Slot B` 镜像。
- 处理：
  - 串口检查 `uart_ota status`，发现 `ACTIVE -> Slot B`，而最近几轮重新烧录写入的是 `Slot A`
  - 执行 `uart_ota reboot`，强制切换到已更新的 `Slot A`
- 验证：
  - 重启日志显示 `[uart_ota] Boot trial confirmed by pending_try: ACTIVE=A`
  - 当前运行槽已变为 `ACTIVE slot: A (0x12020000)`
  - 新镜像已开始正常广播 `SF32_DEV-000b7a`

### 22) 问：`uart_ota reboot` 会烧写活跃槽变成 A 吗；现在灯有点暗了，请亮一点
- 答：`uart_ota reboot` 不会烧写镜像，它只写 `ab_persist.pending_try` 并重启；本轮已将亮度从极暗档回调一档。
- 处理：
  - 说明机制：真正的镜像烧写仍由 `flash` 或 OTA 完成，`uart_ota reboot` 只负责切换下次启动尝试的目标槽
  - `SK6812_MAX_LEVEL` 从 `2` 调整到 `4`
  - 重新编译、签名并烧录到当前运行的 `Slot A`
- 验证：
  - 编译通过
  - 新固件已重新烧录到 `COM6`

### 23) 问：形成一个 PC 工具，可以扫描、连接、选择升级包并升级
- 答：已新增 BLE OTA 图形工具。
- 处理：
  - `ex1/ota_tool/ble_ota_gui.py`：Tk GUI，支持扫描 BLE 设备、选择目标设备、选择 `ota_pkg.bin`、设置 `data cap`、开始升级、查看日志和进度
  - `ex1/ota_tool/run_ble_ota_gui.bat`：Windows 一键启动 GUI
  - `ex1/ota_tool/ble_ota_tool.py`：补充 GUI 复用能力，新增 `scan_devices_info()`、日志/进度回调，并修复 `stop_notify()` 使用当前特征 UUID
- 验证：
  - GUI 和 CLI 均通过 `py_compile`
  - CLI `--self-test` 通过

### 24) 问：点击 Scan 后提示 `bleak not installed`
- 答：已修复 GUI 启动链路，改为自动检查并安装 `bleak`。
- 处理：
  - 更新 `ex1/ota_tool/run_ble_ota_gui.bat`，启动前执行 `import bleak` 检查，不存在时自动 `pip install bleak`
  - 更新 `ex1/ota_tool/ble_ota_gui.py`，启动时记录当前 Python 路径，并在 BLE 依赖不可用时弹窗提示
- 结论：后续优先通过 `run_ble_ota_gui.bat` 启动 GUI，可避免“当前 Python 没装 bleak”导致扫描失败。

### 25) 问：讲解这套 BLE OTA 过程，并说明是否改动了之前的安全加解密和启动
- 答：已从设备端、PC 端、A/B 切换和安全链路四个层面完成说明。
- 结论：
  - BLE OTA 本质上是“把原 UART OTA 协议搬到 BLE characteristic 上”
  - 升级包格式、A/B 切换、镜像 CRC 校验、`ftab`/`image` 两阶段写入逻辑都沿用原有安全 OTA 方案
  - 未新增或替换安全算法；RSA/AES、`ota_pkg.bin = [SFOT][ftab_sec][image_sec]`、bootloader 启动验证链保持原方案不变
- 关键点：
  - 固件侧新增 BLE 收包入口、OTA worker、BLE Notify 回包
  - PC 侧新增 `ble_ota_tool.py` / `ble_ota_gui.py`
  - `uart_ota reboot`/`CMD_REBOOT` 只负责设置 `pending_try` 并重启，不负责烧写镜像

### 26) 问：CallMate 和原来初始状态相比做了哪些更改
- 答：已按应用 OTA 层、Bootloader 层、构建脚本层和文档层总结差异。
- 结论：
  - CallMate 从“普通 A/B OTA”升级成“安全启动 + 安全 OTA + 启动失败可回退”
  - 原 BLE OTA 方式保留，但升级包格式变成 `ota_pkg.bin = [SFOT][ftab_sec][image_sec]`
  - 安全验证被前移到 bootloader，且 `ftab`/镜像切换逻辑更严格

### 27) 问：CallMate 的 BLE OTA 方面改了什么；主机侧应该怎么改；需要主机侧伪代码
- 答：已给出主机侧最小改法和伪代码。
- 结论：
  - 主机最重要的改动不是 BLE 连接层，而是“发送内容”从普通镜像改成完整 `ota_pkg.bin`
  - `total_size` / `crc32` 都必须针对整个 `ota_pkg.bin`
  - 发送时按整个包连续分块，offset 连续增长，不要自己手工区分 `ftab` 和 `image`

### 28) 问：CallMate 是否已经整合 `sf32test` 的 OTA 升级启动；现在该怎么测 BLE OTA 和安全启动
- 答：代码层面已经整合进去了，测试应分成“基础烧录启动验证 / BLE OTA 成功路径 / 安全回退失败路径”三段。
- 结论：
  - 代码已经具备：安全包 `ota_pkg.bin` 识别、`ftab` staging、A/B 启动、Bootloader 校验失败回退
  - 现场验证建议按顺序做：冷启动 -> A→B 成功升级 -> B 槽启动确认 -> 故意失败升级 -> 回退确认

### 29) 问：CallMate 的密钥是否已被 `sf32test` 替换；若没有先备份，再切到 `sf32test` 那套，并解释该密钥集
- 答：已确认之前没有替换；现已先备份 `CallMate/SiFli-SDK/tools/secureboot/callmate_dev`，再把 `sf32test/ex1/secboot/keys` 中的 `s01.bin`、`sig_pri.pem`、`sig_pub.pem`、`sig_hash.bin` 覆盖到 `CallMate` 当前密钥目录。
- 处理：
  - 备份目录：`CallMate/SiFli-SDK/tools/secureboot/callmate_dev_backup_20260409_092448`
  - 由于 `CallMate` 当前 `imgtool.py enc_static` 仍依赖 `uid.bin`，保留了原 `CallMate` 的 `uid.bin`
  - 基于 `sf32test` 的 `sig_pub.pem` 为 `CallMate` 补生成了 `sig_pub.der`
  - 已校验：`CallMate` 当前的 `s01.bin / sig_pri.pem / sig_pub.pem / sig_hash.bin` 与 `sf32test` 完全一致，且 `sig_pub.der` 的 SHA-256 与 `sig_hash.bin` 一致
- 结论：
  - 现在 `CallMate` 已使用 `sf32test` 的 ROOT_KEY 和 RSA 签名密钥体系
  - `uid.bin` 仍沿用 `CallMate` 原值，这是为了兼容当前 `CallMate` 的加密脚本与设备侧解密链路

### 30) 问：把 `CallMate` 的加密链路也改成和 `sf32test` 一样，不再依赖 `uid.bin`；加解密和签名验签都做成一样
- 答：已按 `sf32test` 的 secure image 流程改动 `CallMate` 的 PC 侧打包链路和 bootloader 解密链路。
- 处理：
  - 更新 `CallMate/SiFli-SDK/tools/secureboot/imgtool.py`
    - `enc_static` 不再读取 `uid.bin`
    - `session_key` 改为使用 `ROOT_KEY + SIG_HASH[0:8] + 8B zero` 做 AES-CBC 封装
    - 镜像数据继续使用 `session_key + SIG_HASH` 前缀做 AES-CTR 加密
    - 签名改为和 `sf32test` 一致：对明文镜像做 RSA-SHA256 签名，并把完整安全头写入 `ftab`
    - `--uid` 参数改成 deprecated/ignored
  - 更新 `CallMate/SiFli-SDK/example/boot_loader/project/butterflmicro/board/efuse.c`
    - 先用 `SIG_HASH` 派生的 IV + eFuse `ROOT_KEY` 软件解出 session key
    - 再按 `sf32test` 的方式重包一层 UID-IV，交给 FKEY_MODE 装载 flash key
    - `sifli_hw_dec_key()` 也改成与 `sf32test` 一致，使用 `SIG_HASH` IV + `ROOT_KEY`
  - 更新 `CallMate/mcu/project_525/secureboot_sign.ps1`
    - 去掉 `uid.bin` 必填校验
    - 调用 `enc_static` 时不再传 `--uid`
  - 更新 `CallMate/mcu/docs/CALLMATE_SECURE_BOOT_OTA_GUIDE.md`
    - 移除“PC 打包依赖 `uid.bin`”描述，改为说明与 `sf32test` 一致的 `SIG_HASH` 派生方案
- 验证：
  - `python -m py_compile CallMate/SiFli-SDK/tools/secureboot/imgtool.py` 通过
  - 改动文件未发现 IDE lint 错误
  - 当前工作区内未找到 `CallMate` 的现成 `main.bin/ftab.bin/bootloader.bin` 构建产物，因此尚未做一次完整 `secureboot_sign.ps1` 实跑
- 结论：
  - `CallMate` 现在已经不再依赖 `uid.bin` 作为 PC 侧加密输入
  - 现有目标实现已与 `sf32test` 的 secure image 打包/解包主链路对齐

### 31) 问：同时要 `CallMate build+sign` 实跑验证，并检查 `sf32test` 密钥目录是否已可直接给 `CallMate` 使用
- 答：两项都已完成实测。
- 处理：
  - 执行：`CallMate/mcu/project_525/make.ps1 -Mode -build`
  - 结果：构建成功，且签名打包成功，生成：
    - `CallMate/mcu/project_525/build_sf32lb52-lcd_525_callmate_hcpu/secure/bootloader.bin`
    - `CallMate/mcu/project_525/build_sf32lb52-lcd_525_callmate_hcpu/secure/ftab_sec.bin`
    - `CallMate/mcu/project_525/build_sf32lb52-lcd_525_callmate_hcpu/secure/image_sec.bin`
    - `CallMate/mcu/project_525/build_sf32lb52-lcd_525_callmate_hcpu/secure/ota_pkg.bin`
  - 关键输出：
    - `main.bin` 经安全封装后：`4170968 -> 4171272` bytes
    - `image_sec.bin`（去头后）：`4170976` bytes
    - `ota_pkg.bin`：`4182280` bytes
  - 再执行：`secureboot_sign.ps1 -KeyDir d:\dev\otaMerge\sf32test\ex1\secboot\keys`
  - 结果：直接成功，无需额外改路径
  - 已核对：当前 `sf32test` 密钥目录实际包含 `s01.bin / sig_pri.pem / sig_pub.pem / sig_pub.der / sig_hash.bin / uid.bin`
- 结论：
  - 现在 `sf32test/ex1/secboot/keys` 已经可以直接作为 `CallMate` 的 `-KeyDir`
  - `CallMate` 的默认 `callmate_dev` 与 `sf32test` 当前关键密钥（至少 `s01.bin / sig_hash.bin`）一致，安全打包产物也已在工程真实入口下生成成功

### 32) 问：把 `CallMate` 的 `uid.bin` 也同步成 `sf32test` 的，并清理 `callmate_dev` 目录里的非密钥文件
- 答：已完成。
- 处理：
  - 删除 `CallMate/SiFli-SDK/tools/secureboot/callmate_dev` 中的非密钥产物：
    - `ftab.bin`
    - `image_sec.bin`
    - `main_decrypted.bin`
  - 将 `sf32test/ex1/secboot/keys/uid.bin` 覆盖到 `CallMate/SiFli-SDK/tools/secureboot/callmate_dev/uid.bin`
  - 再次逐个比对两边 6 个核心文件的哈希
- 结论：
  - 现在 `CallMate/SiFli-SDK/tools/secureboot/callmate_dev` 与 `sf32test/ex1/secboot/keys` 在密钥文件层面已经完全一致
  - 两边当前都只保留：
    - `s01.bin`
    - `sig_hash.bin`
    - `sig_pri.pem`
    - `sig_pub.pem`
    - `sig_pub.der`
    - `uid.bin`

### 33) 问：做一套备用烧录文件，内容用 `sf32test`，但不做验签和加密；直接烧到板卡可运行，用来后续串口烧 eFuse
- 答：已生成一套 plain 备用包，目标就是“新板可直接启动 + 进入 msh + 执行 `efuse` 命令”。
- 处理：
  - 使用已有 `sf32test` 构建产物：
    - `rtt/project/build_sf32lb52-lcd_n16r8_test_hcpu/bootloader/bootloader.bin`
    - `rtt/project/build_sf32lb52-lcd_n16r8_test_hcpu/main.bin`
    - `rtt/project/build_sf32lb52-lcd_n16r8_test_hcpu/ftab/ftab.bin`
  - 额外生成 plain OTA 包：
    - 执行 `make.bat plain`
    - 生成 `secboot/out/ota_pkg_plain.bin`
  - 新建目录：`sf32test/ex1/plain_efuse_loader`
  - 放入：
    - `bootloader.bin`
    - `main.bin`
    - `ftab.bin`
    - `ota_pkg_plain.bin`
    - `flash_plain_efuse_loader.bat`
    - `check_efuse_info.bat`
    - `show_efuse_cmds.bat`
    - `show_efuse_cmds.py`
    - `verify_efuse_serial.py`
    - `efuse_write_commands.txt`
    - `keys/`（当前密钥副本）
  - 已执行 `show_efuse_cmds.bat`，成功输出：
    - `efuse write 768 <ROOT_KEY>`
    - `efuse write 128 <SIG_HASH[:8]>`
    - `efuse write 192 a5000000`
- 结论：
  - 这套 plain 包适合在 `SECURE_FLAG` 未写入前，先把板卡刷起来，通过串口命令完成 eFuse 烧写
  - 一旦执行 `efuse write 192 a5000000` 使能安全启动，就不应再继续使用这套 plain 固件，后续应改烧安全镜像

### 34) 问：新板用 `flash_plain_efuse_loader.bat COM3` 烧录失败，但 `CallMate/mcu/project_525/make.ps1` 烧录更容易成功；要求按 `make.ps1` 优化脚本
- 答：已把 `plain_efuse_loader/flash_plain_efuse_loader.bat` 改成更接近 `CallMate make.ps1` 的烧录策略。
- 处理：
  - 对 `COMx` 端口自动启用 `--compat true`
  - 默认加入 `FLASH_RETRIES=3` 重试机制
  - 优先使用 `make.ps1` 风格的简化命令：
    - `sftool -p COMx --compat true -c SF32LB52 -m nor write_flash ...`
  - 失败时自动重试，并提示重新进下载模式
  - 多次失败后，最后再回退到旧的：
    - `--before no_reset --after soft_reset --connect-attempts 10 write_flash --verify ...`
- 结论：
  - 新脚本更贴近你这块新板已验证可行的 `CallMate make.ps1` 烧录路径
  - 适合那种“有时要烧两次才成功”的板卡，减少一次失败就直接退出的概率

### 35) 问：plain eFuse loader 烧录成功后，启动仍报 `SFBLpubkey fail`，希望这套程序用于烧 eFuse 时完全不做加解密和验签
- 答：已定位到根因不是应用，而是 `plain_efuse_loader` 里沿用了 `sf32test` 的安全 bootloader；它即使面对 plain `main.bin/ftab.bin`，也会无条件执行公钥/签名校验。
- 处理：
  - 更新 `sf32test/SiFli-SDK/example/boot_loader/project/butterflmicro/board/main.c`
  - 新增 `secboot_is_enabled()`，读取 eFuse `EFUSE_ID_SECURE_ENABLED`
  - 修改 `secboot_verify_before_run()`：
    - 当 `SECURE_FLAG=0` 时输出 `SFBLsec off` 并直接放行
    - 只有 `SECURE_FLAG!=0` 时，才继续做 `pubkey` / `sig` 校验
  - 用显式环境变量方式重新编译 `sf32test` bootloader / app / ftab
  - 重新覆盖 `plain_efuse_loader` 中的：
    - `bootloader.bin`
    - `main.bin`
    - `ftab.bin`
    - `ota_pkg_plain.bin`
  - 更新 `plain_efuse_loader/README.md` 说明该行为
- 结论：
  - 现在这套 `plain_efuse_loader` 在新板且 `SECURE_FLAG` 尚未烧写时，应可直接启动到 `msh`
  - 等执行 `efuse write 192 a5000000` 后，bootloader 才会重新进入“强制安全校验”模式；之后就不能再继续使用 plain 固件

### 36) 问：`CallMate/mcu/project_525/make.ps1` 经常要运行两次才烧写成功，要求优化修复
- 答：已把 `make.ps1` 中所有关键 `sftool` 操作改成“脚本内自动重试 + 单次超时控制”，不再依赖人工手动再运行第二次。
- 处理：
  - 更新 `CallMate/mcu/project_525/make.ps1`
  - 新增参数：
    - `-FlashRetries`（默认 `3`）
    - `-SftoolTimeoutSec`（默认 `45`）
  - 新增公共函数：
    - `ConvertTo-ProcessArgumentString()`
    - `Invoke-SftoolCommand()`
  - `Invoke-SftoolCommand()` 采用 `System.Diagnostics.Process` 调用 `sftool`，实现：
    - 每次尝试独立启动 `sftool`
    - 单次超时后主动 kill
    - 自动打印 stdout/stderr
    - 失败后自动重试并提示重新进下载模式
  - 下列路径已切换到新公共函数：
    - `Invoke-FlashDefault`
    - `Invoke-FlashAddr`
    - `Invoke-EraseBleNvds`
    - `Invoke-ResetSlotA`
    - `Invoke-SlotInfo`
  - 同时更新帮助信息，显示新参数
- 结论：
  - 现在 `make.ps1` 自身就具备“失败后再试一次”的能力，更适合那种第一次握手容易卡住、第二次才成功的板卡
  - 也避免 `sftool` 长时间卡住不退出，必须手工终止后再重来的问题

### 37) 问：为什么 `plain_efuse_loader` 很快成功，而 `make.ps1 -flash-a` 失败；要求持续调试直到成功
- 答：已继续定位并修复多处 `make.ps1` 烧录层问题。
- 处理：
  - 对比终端日志后确认：
    - `plain_efuse_loader` 直接调用 `sftool`，输出直接落控制台，可正常完成
    - `make.ps1` 初版重试封装使用重定向 + `WaitForExit()`，容易在 `sftool` 大量进度输出时卡住
  - 后续修复：
    - 去掉 `stdout/stderr` 重定向死锁风险
    - 修复 `Invoke-SftoolCommand()` 里参数名 `Args` 与 PowerShell 自动变量 `$args` 冲突的问题，改为 `ToolArgs`
    - 提高默认 `-SftoolTimeoutSec` 从 `45` 到 `120`
    - 修正帮助文本中的超时默认值
  - 实测：
    - `make.ps1 -Mode -flash-a -Port COM3 -FlashRetries 2 -SftoolTimeoutSec 120`
    - 第 1 次尝试超时
    - 脚本自动进入第 2 次尝试
    - 本次执行最终 `exit_code = 0`
- 结论：
  - `make.ps1` 现在已经具备“第一次卡住后自动二次尝试”的能力，不需要你手动再敲第二次
  - 从最近一次实测结果看，脚本级修复已生效，最后一次 `flash-a` 已以退出码 `0` 结束

### 38) 问：CallMate 安全启动已经整合完成了吗，为什么启动时报 `secboot sigkey pub err!`

- 答：已定位到真正根因，不是密钥文件错误，也不是 `ftab` 烧错，而是 `CallMate` bootloader 中公钥 hash 校验路径与 `sf32test` 不一致。
- 处理：
  - 先离线核对：
    - `callmate_dev/sig_pub.der` 的 SHA-256 前 8 字节为 `7D1C8103929F1D09`
    - `callmate_dev/sig_hash.bin` 一致
    - 板上回读的 `ftab_A` / `ftab_B` 中公钥区 hash 也一致
  - 再通过 bootloader 临时调试输出确认：
    - eFuse 读到：`sigkey efuse=7D1C8103929F1D09`
    - 板端原实现算出：`sigkey calc=B81E24BDE4876FA4`
  - 对照 `sf32test` 后确认差异点：
    - `sf32test` 在 bootloader 的公钥 hash 校验和镜像 hash 验签处使用 `mbedtls_sha256()`
    - `CallMate` 原本走的是 `HAL_HASH` 计算路径，结果与 PC 侧标准 SHA-256 不一致
  - 修复：
    - 将 `CallMate/SiFli-SDK/example/boot_loader/project/butterflmicro/board/secboot.c`
      中公钥 hash 校验改为与 `sf32test` 一致的 `mbedtls_sha256()`
    - 将镜像 hash 验签前的 hash 计算也同步改为 `mbedtls_sha256()`
    - 问题确认后，移除了临时 `sigkey efuse / sigkey calc` 调试打印，只保留正式修复
  - 烧录验证：
    - 已重编并重刷 `Slot A`
    - 启动后已确认可以正常进入 `app`
    - 随后已将同一正式 secure 版本补刷到 `Slot B`
- 结论：
  - `CallMate` 当前 secure boot 主链路已经打通，根因是 bootloader hash 实现差异，不是 key 或 secure 包格式本身错误
  - 现在 `A/B` 双槽都已同步到正式 secure 版本
  - 后续若要再验证 `Slot B` 启动，可通过切换 OTA metadata 或实际做一次 OTA 切槽后观察 `app` 启动日志中的 `Slot B`

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

