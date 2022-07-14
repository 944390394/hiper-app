set path==%path%;%appdata%\hiper
mode con cols=55 lines=27
@echo off

set /a sj=%random%/512
set /a yun=%sj%*512
if %sj% GEQ 120 goto 120
if %sj% GEQ 100 goto 100
if %sj% GEQ 90 goto 90
if %sj% GEQ 80 goto 80
if %sj% GEQ 60 goto 60
if %sj% GEQ 50 goto 50
if %sj% GEQ 30 goto 30
if %sj% GEQ 20 goto 20
if %sj% GEQ 0 goto 0 

:120
title "HiPer菜单 ：这次我们更新了114514个特性"
goto sater
:120
title "HiPer菜单 ：当你看到这条tip，你一定就看到了它"
goto sater
:90
title "HiPer菜单 ：前方通往快乐"
goto sater
:80
title "HiPer菜单 ：This is hiper world！"
goto sater
:60
title "HiPer菜单 ：也试试cato！"
goto sater
:50
title "HiPer菜单 ：摸鱼法则"
goto sater
:30
title "HiPer菜单 ：咕咕咕，刷到这条tip需要多少次呢"
goto sater
:20
title "HiPer菜单 ：合理安排时间，享受健康生活"
goto sater
:0
title "HiPer菜单 ：鸽王再世"
goto sater

:sater

%appdata%\hiper\wget.exe  -q -P %appdata%\hiper  -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/hiper.exe

%appdata%\hiper\wget.exe  -q -P %appdata%\hiper  -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/tap-windows.exe

:abc
if not exist %appdata%\hiper\hiper.exe goto nofile
goto menu

:nofile
set /a n+=1
echo ********************************************
echo ********************************************
echo **                                        **
echo **  未能测到hiper程序，正在尝试重新下载 **
echo **  当前重试次数→%n%←(60次封顶)  **
echo ********************************************
echo ********************************************
%appdata%\hiper\wget.exe -q -P %appdata%\hiper -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/hiper.exe
%appdata%\hiper\wget.exe  -q -P %appdata%\hiper  -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/tap-windows.exe
if %n% GEQ 60 goto shibai
goto abc

:shibai
echo ********************************************
echo ********************************************
echo **      未能测到hiper程序，且无法下载       **
echo **        请检查网络环境或联系管理员          **
echo **              作者QQ：944390394               **
echo ********************************************
echo ********************************************
pause
cls
goto menu


:menu
ECHO.       ---------------HiPer启动程序-----------
ECHO.       -    （2） 启动HiPer程序 （凭证入网） -
ECHO.       -    （3） 启动HiPer程序（无凭证入网）-
ECHO.       ---------------------------------------
ECHO.       -    （4）启动HiPer聊天室             -
ECHO.       ---------------------------------------
ECHO.       -    （5） 打开凭证购买页面           -
ECHO.       -    （6） 打开HiPer教程              -
ECHO.       -    （7） 创建快捷方式到桌面         -
ECHO.       -    （8） 手动检查hiper更新          -
ECHO.       -   （u） 打开网页检查 启动程序 更新  -
ECHO.       ---------------------------------------
ECHO.       -  注：无凭证入网每30分钟切断一次连接 -
ECHO.       -      版本：0.4.3   作者：梦游泪世   -
ECHO.       -      BUG反馈/邀请码购买/使用咨询    -
ECHO.       -             作者QQ:944390394        -
ECHO.       -          官方①群：235256586        -
ECHO.       -          官方②群：212927890        -
ECHO.       ---------------------------------------
ECHO.       -        当前日期：%date%    -
ECHO.       -          当前时间：%time%      -
ECHO.       ---------------------------------------
echo.请输入选择项目的序号：
set /p ID=

if not exist C:\Windows\System32\drivers\tap0901.sys goto cmd0

if “%id%”==“1” goto cmd1

if “%id%”==“2” goto cmd2

if “%id%”==“2” goto cmd2

if “%id%”==“3” goto cmd3

if “%id%”==“4” goto cmd4

if “%id%”==“5” goto cmd5

if “%id%”==“6” goto cmd6

if “%id%”==“7” goto cmd7

if “%id%”==“8” goto cmd9

if “%id%”==“114514” goto cmd8

if “%id%”==“u” goto cmdu

if “%id%”==“U” goto cmdu

:cmd0
start %appdata%\hiper\tap-windows.exe
echo -e "\033[31m 未检测到Hiper所需的虚拟网卡 \033[0m"
echo 安装程序已打开，安装即可！
echo 本程序不会对你的计算机造成伤害，请放心
echo 若有杀毒软件拦截，请恢复他并加入白名单
pause
goto menu:

:cmd1
if not exist C:\Windows\System32\drivers\tap0901.sys goto cmd1.1
::这里是判断用户是否安装过虚拟网卡 https://zhidao.baidu.com/question/1046357538354738819.html
echo 检测到你已经安装了虚拟网卡，继续安装可能会出现问题，确定要这么做吗
echo 输入 y 确认安装；输入 n 结束安装
set /p ID=
if “%id%”==“n” goto menu
if “%id%”==“y” goto cmd1.1

:cmd1.1
start %appdata%\hiper\tap-windows.exe
echo 安装程序已打开，安装即可！
pause
goto menu::或者是goto menu回到主菜单

:cmd2
start saterhiper
cls
goto menu

:cmd3
start saterhiperfree
cls
goto menu

:cmd4
start chatfree
cls
goto menu

:cmd5
start https://mcer.cn/shop?ref=azAtwBwzp
cls
goto menu

:cmd6
start https://mcer.cn/463.html?ref=azAtwBwzp
cls
goto menu

:cmd7
@echo off
set "exe=HiPer启动程序.exe"
set "lnk=HiPer启动程序"
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\%lnk%.lnk""):b.TargetPath=""%~dp0%exe%"":b.WorkingDirectory=""%~dp0"":b.Save:close")
echo 完成
cls
goto menu

:cmd8
cls
echo               【彩蛋】好臭的数字啊 @a@
ECHO.
ECHO.
ECHO.
ECHO.     -------------------鸣谢列表------------------
ECHO.     -   梦游泪世    编写本程序，提供更新服务    -
ECHO.     -   起风了吗    编写本程序，提供帮助        -
ECHO.     -   烨          提供有趣的标题后缀          -
ECHO.     ---------------感谢以上人员的大力支持--------
ECHO. 
ECHO. 
ECHO. 
pause
goto menu

:cmdu
start https://mcer.cn/circle/491.html?ref=azAtwBwzp
cls
goto menu

:cmd9
%appdata%\hiper\wget.exe  -P %appdata%\hiper -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/hiper.exe
%appdata%\hiper\wget.exe  -P %appdata%\hiper  -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/tap-windows.exe
pause
cls
goto menu
