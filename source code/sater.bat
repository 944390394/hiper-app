::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCiDJFGNyEMhLhZBAV2AOH7qS+VMuaby7OXn
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJgZksaGErTXA==
::ZQ05rAF9IBncCkqN+0xwdVsEAlTMaCXrZg==
::ZQ05rAF9IAHYFVzEqQI4IQtRXoFl8eN159U=
::eg0/rx1wNQPfEVWB+kM9LVsJDAyLLG6og1LRYCcajw==
::fBEirQZwNQPfEVWB+kM9LVsJDAyLLG6og1LRYCcajw==
::cRolqwZ3JBvQF1fEqQI4IQtRXoFl8eN159U=
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEcoD2rsOMytdIuLNMZg==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCiDJFGNyEo5OB5GcBeDKG6oSLAE7Yg=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
mode con cols=50 lines=20
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
if “%aaa%”==“N” goto bcz
if “%aaa%”==“n” goto bcz
goto zc


:bcz
color 8b
CLS
echo   当前运行路径是：
echo   %CD%
echo   已获取管理员权限
echo   ***************************
echo   **欢迎使用梦游HiPer启动器**
echo   ***************************
echo   *    脚本作者：梦游泪世   *
echo   *    凭证 邀请码  有售    *
echo   *    QQ: 944390394        *
echo   +++++++++++++++++++++++++++
echo    =   把秘钥输入到下方    =
echo    =   按下回车便可启用    =
echo    = 联机时请勿关闭此窗口  =
echo    —————————————
set plus=error
set /p plus=输入你的秘钥：
color 2f
if not exist %appdata%\hiper\token\%plus%.yml goto xz
@echo off
goto 01

:xz
if %plus%==error goto wsr
%appdata%\hiper\wget.exe -q -P %appdata%\hiper\token -S -N -t 50  "https://cert.mcer.cn/%plus%.yml" 
if not exist %appdata%\hiper\token\%plus%.yml goto wfxz
goto 01


:wsr
color 4F
cls
echo   ++++++++++++++++++++++++++++++
echo   =  你似乎没有输入任何凭证哦  =
echo   =     在输入一次试试吧       =
echo   =  没有凭证可是没办法启动的  =
echo   ———————————————
pause > NUL
goto bcz

:wfxz
color 4F
cls
echo   ++++++++++++++++++++++++++++++
echo   = 我无法通过你的密钥下载证书 =
echo   = 请检查密钥是否超过下载时效 =
echo   =  或者寻求群内管理员的帮助  =
echo   ———————————————
pause > NUL
start menu.exe
exit

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
echo 
pause
exit

:zc
color 8b
@echo off
CLS
echo   当前运行路径是：
echo   %CD%
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
start %appdata%\hiper\log.exe 
::启动hiper
start %appdata%\hiper\Daemon.exe
goto GUI1


@echo off
:GUI1
set myip=未检测到HiPer中的IP
:: 获取本机IP
:: 将ipconfig的结果传给find，获得ipconfig结果中带ipv4的行
:: for循环对每行都执行：提取IP赋给myip。
:: /f的作用是让for处理字符串中的内容，通常情况下，不带/f的for命令会处理文件名，带/f会处理文件内的内容
:: for命令默认使用空格符、制表符将每行内容分为几个元素，tokens=16是第16个元素即ip值

for /f "tokens=16" %%i in ('ipconfig ^|find "6.0"') do (
set myip=%%i
:: 正常情况下find查询只有一行结果，如果主机安装了虚拟机则会有多个适配器有ip地址。第一个才是本机IP，故使用goto保证for只执行一次就跳出循环，防止后续myip的值被覆盖
goto yunxin
)
cls
echo  ------------------------------------------------
echo  -                 HiPer  启动中
echo  - 
echo  -    当前状态：正在检测IP中
echo  -                 
echo  -                  【#****】
echo  -                   
echo  -    网络地址：%myip%
echo  ------------------------------------------------
timeout /t 1 /nobreak > NUL
if %myip%==未检测到HiPer中的IP goto GUI2
goto yunxin

:GUI2
set myip=未检测到HiPer中的IP
:: 获取本机IP
:: 将ipconfig的结果传给find，获得ipconfig结果中带ipv4的行
:: for循环对每行都执行：提取IP赋给myip。
:: /f的作用是让for处理字符串中的内容，通常情况下，不带/f的for命令会处理文件名，带/f会处理文件内的内容
:: for命令默认使用空格符、制表符将每行内容分为几个元素，tokens=16是第16个元素即ip值

for /f "tokens=16" %%i in ('ipconfig ^|find "6.0"') do (
set myip=%%i
:: 正常情况下find查询只有一行结果，如果主机安装了虚拟机则会有多个适配器有ip地址。第一个才是本机IP，故使用goto保证for只执行一次就跳出循环，防止后续myip的值被覆盖
goto yunxin
)
cls
echo  ------------------------------------------------
echo  -                 HiPer  启动中
echo  - 
echo  -    当前状态：正在检测IP中
echo  -                 
echo  -                  【*#***】
echo  -                   
echo  -    网络地址：%myip%
echo  ------------------------------------------------
timeout /t 1 /nobreak > NUL
if %myip%==未检测到HiPer中的IP goto GUI3
goto yunxin

:GUI3
set myip=未检测到HiPer中的IP
:: 获取本机IP
:: 将ipconfig的结果传给find，获得ipconfig结果中带ipv4的行
:: for循环对每行都执行：提取IP赋给myip。
:: /f的作用是让for处理字符串中的内容，通常情况下，不带/f的for命令会处理文件名，带/f会处理文件内的内容
:: for命令默认使用空格符、制表符将每行内容分为几个元素，tokens=16是第16个元素即ip值

for /f "tokens=16" %%i in ('ipconfig ^|find "6.0"') do (
set myip=%%i
:: 正常情况下find查询只有一行结果，如果主机安装了虚拟机则会有多个适配器有ip地址。第一个才是本机IP，故使用goto保证for只执行一次就跳出循环，防止后续myip的值被覆盖
goto yunxin
)
cls
echo  ------------------------------------------------
echo  -                 HiPer  启动中
echo  - 
echo  -    当前状态：正在检测IP中
echo  -                 
echo  -                  【**#**】
echo  -                   
echo  -    网络地址：%myip%
echo  ------------------------------------------------
timeout /t 1 /nobreak > NUL
if %myip%==未检测到HiPer中的IP goto GUI4
goto yunxin

:GUI4
set myip=未检测到HiPer中的IP
:: 获取本机IP
:: 将ipconfig的结果传给find，获得ipconfig结果中带ipv4的行
:: for循环对每行都执行：提取IP赋给myip。
:: /f的作用是让for处理字符串中的内容，通常情况下，不带/f的for命令会处理文件名，带/f会处理文件内的内容
:: for命令默认使用空格符、制表符将每行内容分为几个元素，tokens=16是第16个元素即ip值

for /f "tokens=16" %%i in ('ipconfig ^|find "6.0"') do (
set myip=%%i
:: 正常情况下find查询只有一行结果，如果主机安装了虚拟机则会有多个适配器有ip地址。第一个才是本机IP，故使用goto保证for只执行一次就跳出循环，防止后续myip的值被覆盖
goto yunxin
)
cls
echo  ------------------------------------------------
echo  -                 HiPer  启动中
echo  - 
echo  -    当前状态：正在检测IP中
echo  -                 
echo  -                  【***#*】
echo  -                   
echo  -    网络地址：%myip%
echo  ------------------------------------------------
timeout /t 1 /nobreak > NUL
if %myip%==未检测到HiPer中的IP goto GUI5
goto yunxin

:GUI5
set myip=未检测到HiPer中的IP
:: 获取本机IP
:: 将ipconfig的结果传给find，获得ipconfig结果中带ipv4的行
:: for循环对每行都执行：提取IP赋给myip。
:: /f的作用是让for处理字符串中的内容，通常情况下，不带/f的for命令会处理文件名，带/f会处理文件内的内容
:: for命令默认使用空格符、制表符将每行内容分为几个元素，tokens=16是第16个元素即ip值

for /f "tokens=16" %%i in ('ipconfig ^|find "6.0"') do (
set myip=%%i
:: 正常情况下find查询只有一行结果，如果主机安装了虚拟机则会有多个适配器有ip地址。第一个才是本机IP，故使用goto保证for只执行一次就跳出循环，防止后续myip的值被覆盖
goto yunxin
)
cls
echo  ------------------------------------------------
echo  -                 HiPer  启动中
echo  - 
echo  -    当前状态：正在检测IP中
echo  -                 
echo  -                  【****#】
echo  -                   
echo  -    网络地址：%myip%
echo  ------------------------------------------------
timeout /t 1 /nobreak > NUL
if %myip%==未检测到HiPer中的IP goto GUI1
goto yunxin







:yunxin
set tc=0
color 2f
cls
echo  ------------------------------------------------
echo  -                 HiPer  运行中
echo  -    轻快如风x安如磐石-最佳跨区域组网方案     
echo  - 
echo  -    当前状态：启动成功
echo  -
echo  -    网络地址：%myip% 游戏端口：%duankou%
echo  ------------------------------------------------          
echo  -   （1）输入游戏端口号 （2）开放游戏防火墙(待开发)   
echo  -                       
echo  -   （3）PCL(待开发)   （4）HMCL(待开发)
echo  -
::echo  -   （3）生成PCL联机码  （4）生成HMCL联机码
echo  -   （5）mc房间（加入方使用）（即将开放）
echo  -         (N)退出梦游联机启动器
echo  ------------------------------------------------
set /p tc=请输入选择项目的序号：
if %tc%==N goto tc
if %tc%==n goto tc
goto yunxin

:tc
taskkill /f /im hiper.exe
taskkill /f /im Daemon.exe
exit

:sb
color 4F
echo 抱歉，Hiper启动程序非正常退出，可能原因：
echo 凭证输入错误
echo 凭证已超过限期
pause
start menu.exe




