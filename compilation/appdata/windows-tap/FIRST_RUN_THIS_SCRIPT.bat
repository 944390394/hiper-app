@echo off
echo. ------------------------------------
echo. = ���ڰ�װ��������������رմ˴��� =
echo. ------------------------------------
@echo on
@rem Add a new TAP virtual ethernet adapter

cd /d %~dp0

tap_install.exe install OemVista.inf tap0901

@echo off
echo. --------------------------
echo. = ��װ��� 5����Զ��˳� =
echo. --------------------------
timeout /nobreak /t 5
exit

