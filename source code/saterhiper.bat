@echo off
set path==%path%;%appdata%\hiper
title Hiper启动程序
if exist "%SystemRoot%\SysWOW64" path %path%;%windir%\SysNative;%SystemRoot%\SysWOW64;%~dp0
bcdedit >nul
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto UACAdmin)
:UACPrompt
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
exit /B
:UACAdmin
cd /d "%~dp0"
if not exist %appdata%\hiper\hiper.exe goto nofile
goto hiperplus

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

:hipermenu
cls
echo. -----------------------------Hiper菜单-----------------------------
echo. （1）启动hiper      免费模式   与hiper凭证模式互通 （可使用cato凭证）
echo. （2）启动hiper      凭证模式   与hiper免费模式互通 （可使用cato凭证）
echo. （3）启动hiper plus 凭证模式   与hiper plus凭证模式互通 （只能使用hiper凭证）
echo. ------------------------------------------------------------------------
echo.请输入选择项目的序号：
set /p menu=
if “%menu%”==“1” goto saterhiper

if “%menu%”==“3” goto hiperplus

if “%menu%”==“2” goto hiper
goto hipermenu

:saterhiper
start saterhiperfree
exit






:hiperplus
color 8b
set config=1
if not exist %appdata%\hiper\config.yml set config=0
if %config%==1  goto cz
if %config%==0  goto bcz

:cz
color 2f
cls
echo       ***************************************
echo       ****   欢迎使用Hiper快速启动程序   ****
echo       ***************************************
echo       **       → 目前已检查到证书←       **
echo       **    请确保你的凭证在 → 有效期内 ←**
echo       **     如过期请输入N重新下载证书     **
echo       ***************************************
echo.
set /p aaa=按任意键继续启动Hiper，输入N重新下载证书
set xz = 0
if “%aaa%”==“N” goto bcz
if “%aaa%”==“n” goto bcz
goto zc


:bcz
color 8b
CLS
echo   当前运行路径是：%CD%
echo   已获取管理员权限
echo   **********************
echo   **欢迎使用Hiper快速启动程序**
echo   **********************
echo   *脚本作者：梦游泪世  *
echo   *凭证 邀请码  有售   *
echo   * QQ：944390394      *
echo   ++++++++++++++++++++++
echo   =  把秘钥输入到下方  =
echo   =  按下回车便可启用  =
echo   =联机时请勿关闭此窗口=
echo   ———————————
set /p plus=输入你的秘钥：
color 2f
@echo on
if not exist %appdata%\hiper\token\%plus%.yml goto xz
@echo off
goto 01

:xz
%appdata%\hiper\wget.exe -q -P %appdata%\hiper\token -S -N -t 50  "https://cert.mcer.cn/%plus%.yml" 
if not exist %appdata%\hiper\token\%plus%.yml goto sb
goto 01

:01
del %appdata%\hiper\config.yml 
copy %appdata%\hiper\token\%plus%.yml %appdata%\hiper\config.yml 
set config=1
if not exist %appdata%\hiper\config.yml set config=0
if %config%==0  goto sb
if %config%==1  goto zc
@echo off
color 4F
echo.
echo.
echo 抱歉，Hiper启动程序非正常退出，可能原因：
echo 凭证输入错误
echo 凭证已超过限期
echo 01
pause
exit

:zc
@echo off
CLS
echo   当前运行路径是：%CD%
echo   已获取管理员权限
echo   **********************
echo   **欢迎使用Hiper Plus程序**
echo   **********************
echo   *脚本作者：梦游泪世  *
echo   *凭证 邀请码  有售   *
echo   * QQ：944390394      *
echo   ++++++++++++++++++++++
echo   =联机时请勿关闭此窗口=
echo   ———————————
pause
call hiper.exe
goto sb 

:sb
color 4F
echo 抱歉，Hiper启动程序非正常退出，可能原因：
echo 凭证输入错误
echo 凭证已超过限期
pause
start menu.exe