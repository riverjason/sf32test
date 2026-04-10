# SF32Test BLE OTA 升级说明

适用工程：`sf32test/ex1`

## 1. 方案概述

本次在 `ex1` 中新增了 BLE OTA 接入方式，但底层仍复用现有 `uart_ota.c` 的安全 A/B 升级逻辑：

- 仍使用同一套 A/B 槽切换
- 仍写 `ftab_A/ftab_B` 与 `slot_A/slot_B`
- 仍使用 `ota_pkg.bin = [SFOT][ftab_sec][image_sec]`
- 只是把原本走 UART 的协议帧，增加了一条 BLE characteristic 收发通道

也就是说：

- `UART OTA` 继续可用
- `BLE OTA` 是对同一升级状态机的复用，不是另一套独立 OTA 核心

## 2. BLE OTA 接口

当前 `ex1` 使用现有自定义 128-bit service：

- Service UUID: `7369666c-695f-6170-7000-000000000000`
- Char UUID: `7369666c-695f-6170-7001-000000000000`

该 characteristic 同时承担：

- 主机 -> 从机：Write / Write Without Response
- 从机 -> 主机：Notify

## 3. BLE OTA 协议

BLE OTA 复用了 UART OTA 的帧格式。

### 3.1 帧格式

```text
[0x55 0xAA][cmd 1B][len 2B LE][seq 2B][payload][crc32 4B]
```

### 3.2 主要命令

- `HELLO (0x01)`
- `ERASE (0x02)`
- `DATA (0x03)`
- `FINISH (0x04)`
- `ABORT (0x05)`
- `REBOOT (0x06)`
- `TARGET (0x07)`

### 3.3 响应

从机会通过同一特征值用 Notify 返回：

```text
[0x55 0xAA][0x80|cmd][...]
```

## 4. 主机侧如何配合

主机侧不需要理解 `ftab_sec.bin` 和 `image_sec.bin` 的边界。

只需要：

1. 准备 `secboot/out/ota_pkg.bin`
2. 把整个 `ota_pkg.bin` 当作升级文件
3. 通过 BLE 按帧发送给 characteristic

推荐流程：

1. 连接设备
2. 打开 characteristic 的 Notify
3. 读取/协商 MTU
4. 发 `HELLO`
5. 用 `HELLO` 响应里的 target slot / target ftab 信息
6. `ERASE` image target
7. 循环发送 image 数据 `DATA`
8. `FINISH`
9. `TARGET` 切到 ftab target
10. `ERASE` ftab target
11. 循环发送 ftab 数据 `DATA`
12. `FINISH`
13. `REBOOT`

注意：

- 当前 BLE OTA 复用 UART OTA 协议，所以仍然是“先 image，后 ftab”
- 建议主机按从机 `HELLO` 返回的最大帧负载来决定单帧大小
- BLE 下建议每帧有效数据保守控制在 `180~220B`

## 5. 固件侧行为

BLE characteristic 收到数据后：

- 如果检测到帧头 `0x55 0xAA`
- 或当前已经处于 BLE OTA 会话中

则把收到的数据直接喂给 `uart_ota.c` 的 parser。

因此：

- 主机看到的是 BLE OTA
- 从机内部实际跑的是复用后的 `uart_ota` 协议处理器

## 6. 测试验证建议

建议分 4 轮验证。

### 先跑主机侧自动化自检

在不上板的情况下，建议先把 PC 侧工具自检跑通：

1. 进入 `sf32test/ex1/ota_tool`
2. 执行 `python ble_ota_tool.py --self-test`
3. 或直接执行 `run_ble_ota_selftest.bat`

自动化覆盖内容：

- `ota_pkg.bin` 解析
- OTA 帧编解码
- 模拟 BLE Notify / Write 往返
- `HELLO -> ERASE -> DATA -> FINISH -> TARGET -> ERASE -> DATA -> FINISH -> REBOOT` 主流程

通过标准：

- 输出 `SELF-TEST PASS`
- `python -m unittest test_ble_ota_tool.py` 全部通过
- 不依赖真实 BLE 硬件

### 第一轮：基础链路验证

目标：确认 BLE characteristic 可收可发。

建议步骤：

1. 烧录新固件
2. 用 nRF Connect 扫描设备
3. 连接后打开 Notify
4. 向 OTA characteristic 手动写一个 `HELLO` 帧
5. 确认设备能回 `HELLO RSP`

通过标准：

- 手机端能收到 Notify 响应
- 日志中无 BLE 断连或异常

### 第二轮：小包功能验证

目标：确认 BLE OTA 数据确实进入 OTA parser。

建议步骤：

1. 手动发 `HELLO`
2. 发 `TARGET`
3. 发 `ERASE`
4. 发少量 `DATA`
5. 发 `ABORT`

通过标准：

- 每条命令都有响应
- `DATA` 返回成功
- `ABORT` 后会话可重新开始

### 第三轮：完整升级验证

目标：确认完整 BLE OTA 成功。

建议步骤：

1. 先生成 `ota_pkg.bin`
2. 通过 BLE 工具按完整流程发送 image + ftab
3. 发送 `REBOOT`
4. 重连设备或看串口日志

通过标准：

- 设备正常重启
- Bootloader 启动新槽成功
- 应用启动后 `uart_ota_init()` 正确认领 active slot

建议重点观察日志：

- `[uart_ota] ACTIVE slot: ...`
- Bootloader 是否从目标槽启动
- 是否有验签失败日志

### 第四轮：异常场景验证

目标：确认回退和防护有效。

建议至少测这 4 项：

1. `image` 发一半断开 BLE
2. `ftab` 发一半断开 BLE
3. 使用损坏的 `ota_pkg.bin`
4. 正常升级后手动重启多次

预期结果：

- 升级中断不会破坏当前活跃槽
- 损坏包不会成功切换
- 新槽无法启动时应回退旧槽

## 7. 推荐测试顺序

建议你实际操作时按这个顺序：

1. 串口正常启动验证
2. BLE 连接与 Notify 验证
3. `HELLO / ERASE / DATA / ABORT` 小流量验证
4. 用较小 `ota_pkg.bin` 做一次完整升级
5. 再做正式完整升级
6. 最后做异常和回退验证

## 8. 目前限制

当前实现是“最小可用版 BLE OTA”：

- 复用现有单 characteristic
- 复用 UART OTA 协议
- 未额外实现类似 CallMate 那种 JSON 控制面
- 未增加独立 BLE OTA PC 工具

如果后续需要，可以再继续演进为：

- 独立 `ctrl/data` 双 characteristic
- ACK / chunk 统计 / 缺包重传
- 专用 `ble_ota_tool.py`
