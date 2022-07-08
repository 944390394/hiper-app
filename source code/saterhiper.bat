@echo off
set path==%path%;%appdata%\hiper
title "hiper启动程序"
if exist "%SystemRoot%\SysWOW64" path %path%;%windir%\SysNative;%SystemRoot%\SysWOW64;%~dp0
bcdedit >nul
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto UACAdmin)
:UACPrompt
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
exit /B
:UACAdmin
cd /d "%~dp0"
echo 当前运行路径是：%CD%
echo 已获取管理员权限
echo **********************
echo **欢迎使用hiper程序**
echo **********************
echo *脚本作者：梦游泪世  *
echo *凭证 邀请码  有售   *
echo * QQ：944390394      *
echo ++++++++++++++++++++++
echo =  把秘钥输入到下方  =
echo =  按下回车便可启用  =
echo =联机时请勿关闭此窗口=
echo ———————————
set /p mm=输入你的秘钥：
hiper v -t ‘%mm%’
echo.
echo.
echo [启动失败，请检查秘钥是否填写正确，或检查是否有文件更新]
pause