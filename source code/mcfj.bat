::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH7eyEo5FJ2inIFZ5u1M4THHPm0/NtaKoU9TUfo6GA==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCiDJFGNyEMzfgpcAR2IM222S+VMuaby7OXn
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF25
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSTk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHGQ=
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbAs=
::ZQ05rAF9IAHYFVzEqQI9K528k4116O5j2TPuJWcnB29JTsrGp23jke8=
::eg0/rx1wNQPfEVWB+kM9LVsJDAmBuoNlj0LIbTEkaRhKLZH10SzT/1QoVWhnQA==
::fBEirQZwNQPfEVWB+kM9LVsJDIFM0Oxh9dU=
::cRolqwZ3JBvQF1fEqQK15vfTl/cG5o012lmbMwd+AQwDeKtIBGf7ggsDEDNnyGbvJiU=
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEcoD2rsOMytdIuLNMZg==
::ZQ0/vhVqMQ3MEVWAtB9wrtmSytxaurhwgm3qiA==
::Zg8zqx1/OA3MEVWAtB9wrtmSytxaurhwgm3qiA==
::dhA7pRFwIByZRRkBOq638+g0
::Zh4grVQjdCiDJFGNyEo5OB5GcAmBOmH0A60ZiA==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
::以上是bat编译软件生成

@echo off
set path==%path%;%appdata%\hiper
title MC局域网房间生成器
if exist "%SystemRoot%\SysWOW64" path %path%;%windir%\SysNative;%SystemRoot%\SysWOW64;%~dp0
bcdedit >nul
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto UACAdmin)
:UACPrompt
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
exit /B
:UACAdmin
cd /d "%~dp0"
color 8b



:001
set IP=暂未输入
set duanko=暂未输入
CLS
echo     当前运行路径是：%CD%
echo     已获取管理员权限
echo     **********************
echo     **欢迎使用MC局域网房间生成器**
echo     **********************
echo     *脚本作者：梦游泪世  *
echo     *凭证 邀请码  有售   *
echo     * QQ：944390394      *
echo   ++++++++++++++++++++++
echo   =  请输入房主在HiPer中的IP  =
echo   =   ↓ 输入的信息   ↓ =
echo   =   IP:%IP%   =
echo   =   游戏端口:%duanko%   =
echo   ———————————
set /p IP=输入房主在Hiper中的IP地址：
goto 002

:002
CLS
echo     当前运行路径是：%CD%
echo     已获取管理员权限
echo     **********************
echo     **欢迎使用MC局域网房间检测器**
echo     **********************
echo     *脚本作者：梦游泪世  *
echo     *凭证 邀请码  有售   *
echo     * QQ：944390394      *
echo   ++++++++++++++++++++++
echo   =  请输入房主在MC中的端口  =
echo   =   ↓ 输入的信息   ↓ =
echo   =   IP:%IP%  =
echo   =   游戏端口:%duanko%  =
echo   ———————————
set /p duanko=输入房主MC中开放的端口：
goto 003

:003
CLS
echo     当前运行路径是：%CD%
echo     已获取管理员权限
echo     **********************
echo     **欢迎使用MC局域网房间检测器**
echo     **********************
echo     *脚本作者：梦游泪世  *
echo     *凭证 邀请码  有售   *
echo     * QQ：944390394      *
echo   ++++++++++++++++++++++
echo   =  【正在运行中，请勿关闭】 =
echo   =   ↓ 输入的信息   ↓ =
echo   =   IP:%IP%  =
echo   =   游戏端口:%duanko%  = 
echo   ———————————
set /p qd=请确认信息无误，按回车启动程序
if “%qd%”==“O” goto 001
if “%qd%”==“o” goto 001
goto 004









:004
CLS
echo     当前运行路径是：%CD%
echo     已获取管理员权限
echo     **********************
echo     **欢迎使用MC局域网房间检测器**
echo     **********************
echo     *脚本作者：梦游泪世  *
echo     *凭证 邀请码  有售   *
echo     * QQ：944390394      *
echo   ++++++++++++++++++++++
echo   =  请输入房主在HiPer中的IP  =
echo   =   ↓ 输入的信息   ↓ =
echo   =   IP:%IP%  =
echo   =   游戏端口:%duanko%  =
echo   ———————————
echo 正在启动程序，请刷新mc多人游戏界面，检测是否能看到房间
color 2f
mcb.exe -addr %IP%:%duanko%
@echo off
color 4F
echo.
echo.
echo 抱歉，MC局域网房间生成器非正常退出，可能原因：
echo IP输入错误
echo 房主未加入HIPER
echo 加入方未加入HIPER
pause
exit





