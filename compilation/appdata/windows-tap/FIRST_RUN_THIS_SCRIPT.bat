@echo off
echo. ------------------------------------
echo. = 正在安装虚拟网卡，请勿关闭此窗口 =
echo. ------------------------------------
@echo on
@rem Add a new TAP virtual ethernet adapter

cd /d %~dp0

tap_install.exe install OemVista.inf tap0901

@echo off
echo. --------------------------
echo. = 安装完毕 5秒后自动退出 =
echo. --------------------------
timeout /nobreak /t 5
exit

