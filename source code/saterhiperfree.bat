@echo off
set path==%path%;%appdata%\hiper
title "hiper启动程序（免费版）"
if exist "%SystemRoot%\SysWOW64" path %path%;%windir%\SysNative;%SystemRoot%\SysWOW64;%~dp0
bcdedit >nul
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto UACAdmin)
:UACPrompt
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
exit /B
:UACAdmin
cd /d "%~dp0"
if not exist %appdata%\hiper\hiper.exe goto nofile
goto start
:nofile
echo ********************************************
echo ********************************************
echo **                                        **
echo **  未能测到hiper程序，请返回菜单检查更新 **
echo **                                        **
echo ********************************************
echo ********************************************
pause
exit
:start
echo 当前运行路径是：%CD%
echo 已获取管理员权限
set n=0
:abc
set /a n+=1
echo *********************************
echo ***欢迎使用hiper程序（免费版）***
echo *********************************
echo **      脚本作者：梦游泪世     **
echo **      凭证 邀请码  有售      **
echo **       QQ：944390394         **
echo *+++++++++++++++++++++++++++++++*
echo *= 注：免费版30分钟会自动重启  =*
echo *=当前重启次数→%n%←(60次封顶)=*
echo *+++++++++++++++++++++++++++++++*
echo *=     联机时请勿关闭此窗口    =*
echo ————————————————
hiper v 
if %n% GEQ 60 goto xx
cls
goto abc
:xx
echo.
echo.
echo [请检查是否已自动重启60次，或检查是否有文件更新]
pause
