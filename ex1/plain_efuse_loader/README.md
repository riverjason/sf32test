# SF32Test Plain eFuse Loader

这是一套给新板预烧录使用的备用文件。

目标：

- 固件内容保持 `sf32test` 当前应用逻辑
- 不做签名
- 不做加密
- 直接烧录后可启动
- 启动后可通过串口 `msh` 使用 `efuse` 命令烧写 eFuse

适用场景：

- 新板初次上电验证
- 在 `SECURE_FLAG` 尚未烧写前，通过串口执行 `efuse write ...`
- 量产前的安全烧写准备工位

## 包内文件

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
- `keys/`

## 直烧地址

- `bootloader.bin` -> `0x12010000`
- `main.bin` -> `0x12020000`
- `ftab.bin` -> `0x12000000`

## 使用步骤

1. 板卡进入下载模式。
2. 运行 `flash_plain_efuse_loader.bat COMx`。
3. 上电后打开串口，看是否进入 `msh />`。
4. 先执行 `efuse info` 确认当前状态。
5. 参考 `efuse_write_commands.txt` 或运行 `show_efuse_cmds.bat`。
6. 在串口里逐条执行 `efuse write ...`。
7. 最后一条才执行 `efuse write 192 a5000000`。
8. eFuse 烧完后，改烧安全镜像，不要再继续用这套 plain 固件。

## 重要说明

- 这套 plain 固件仅适用于 `SECURE_FLAG` 还未使能的板卡。
- 这套包内的 `bootloader.bin` 已专门调整为：`SECURE_FLAG=0` 时跳过公钥/签名校验，允许 plain `main.bin/ftab.bin` 直接启动。
- 一旦写入 `SECURE_FLAG`，bootloader 将要求安全镜像，plain 固件后续不会再正常启动。
- `keys/` 中包含当前使用的密钥材料，请妥善保管。
