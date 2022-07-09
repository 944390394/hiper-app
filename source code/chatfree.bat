mode con cols=50 lines=30
@echo off
set path==%path%;%appdata%\hiper
title "Hiper聊天程序"
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
set /a n+=1
echo *******************************
echo **欢迎使用hiper聊天程序免费版**
echo *******************************
echo *     脚本作者：梦游泪世      *
echo *     凭证 邀请码  有售       *
echo *      QQ：944390394          *
echo +++++++++++++++++++++++++++++++
echo =       输入你的聊天昵称      =
echo =       按下回车便可启用      =
echo ————————————————
set /p name=输入你的昵称：

hiper c --names %name%
echo.
echo.
echo [抱歉，Hiper聊天程序非正常退出，请重新输入 4 启动，若启动再次失败，请在HiPer启动菜单中检查软件更新]
pause
