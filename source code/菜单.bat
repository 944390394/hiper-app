set path==%path%;%appdata%\hiper

mode con cols=70 lines=14

@echo off

set  tapexamine=未知错误
set  hiperexamine=未知错误
set  wgetexamine=未知错误
set  chatfreeexamine=未知错误
set  saterhiperexamine=未知错误
set  saterhiperfreeexamine=未知错误


set /a Randomnumber=%random%%%11+1


:Title
if "%Randomnumber%"=="1" title HiPer启动器 ┃ 这次我们更新了114514个特性！
if "%Randomnumber%"=="2" title HiPer启动器 ┃ 当你看到这条tip，你一定就看到了它！
if "%Randomnumber%"=="3" title HiPer启动器 ┃ 前方通往快乐
if "%Randomnumber%"=="4" title HiPer启动器 ┃ This is hiper world！
if "%Randomnumber%"=="5" title HiPer启动器 ┃ 也试试cato！
if "%Randomnumber%"=="6" title HiPer启动器 ┃ 摸鱼法则
if "%Randomnumber%"=="7" title HiPer启动器 ┃ 摸鱼是不好的行为!
if "%Randomnumber%"=="8" title HiPer启动器 ┃ 咕咕咕，刷到这条tip需要多少次呢
if "%Randomnumber%"=="9" title HiPer启动器 ┃ 合理安排时间，享受健康生活
if "%Randomnumber%"=="10" title HiPer启动器 ┃ 可以去看看我的GitHub哦!
if "%Randomnumber%"=="11" title HiPer启动器 ┃ 鸽王再世
goto Selftest

:Selftest
set tapexamine=正常
if not exist %appdata%\hiper\tap-windows.exe set tapexamine=未检测到文件
set hiperexamine=正常
if not exist %appdata%\hiper\hiper.exe set hiperexamine=未检测到文件
set  chatfreeexamine=正常
if not exist %appdata%\hiper\chatfree.exe set chatfreeexamine=未检测到文件
set  saterhiperexamine=正常
if not exist %appdata%\hiper\saterhiper.exe set saterhiperexamine=未检测到文件
set  saterhiperfreeexamine=正常
if not exist %appdata%\hiper\saterhiperfree.exe set saterhiperfreeexamine=未检测到文件
set  wgetexamine=正常
if not exist %appdata%\hiper\wget.exe set wgetexamine=未检测到文件
if %hiperexamine%==未检测到文件  goto Download
if %tapexamine%==未检测到文件 goto Download
if %chatfreeexamine%==未检测到文件 goto error
if %saterhiperexamine%==未检测到文件 goto error
if %saterhiperfreeexamine%==未检测到文件 goto error
if %wgetexamine%==未检测到文件 goto error
goto sater

:error
echo ------------------------自检报告--------------------------
echo 自检遇到错误，请检查文件位置，或重新启动本程序
echo 网卡安装程序：【%tapexamine%】
echo hiper主程序 ：【%hiperexamine%】
echo 聊天程序：【%chatfreeexamine%】
echo 免费联机模块：【%saterhiperexamine%】
echo 凭证联机模块： 【%saterhiperfreeexamine%】
echo 下载模块：【%wgetexamine%】
echo 网卡状态：【%tapsater%】
echo 如果你在此处遇到问题，且无法自行解决，请联系QQ：944390394
echo 注意：时刻保持一颗清醒的头脑和一颗谦虚的心灵会让你的问题更快得到解决！
echo.
echo 按任意键退出
pause>nul

:Download
echo 网卡安装程序：【%tapexamine%】
echo hiper主程序 【%hiperexamine%】
echo 您的文件缺失，是否联网进行下载。（注：此过程会消耗网络流量）
echo.请键入您的选择：输入yes进行下载，输入no退出
set /p xz=
if “%xz%”==“yes” goto sater
if “%xz%”==“no” exit
exit



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
mode con cols=55 lines=28
set tapsater=已安装
if not exist C:\Windows\System32\drivers\tap0901.sys set tapsater=未安装
ECHO.       ---------------HiPer启动程序-----------
ECHO.       -    （1）→ 安装HiPer虚拟网卡←      -
ECHO.       -     （↑首次启动请先运行此项↑）    -
ECHO.       ---------------------------------------
ECHO.       -    （2） 启动HiPer程序 （凭证入网） -
ECHO.       -    （3） 启动HiPer程序（无凭证入网）-
ECHO.       ---------------------------------------
ECHO.       -    （4）启动HiPer聊天室             -
ECHO.       ---------------------------------------
ECHO.       -    （5） 创建快捷方式到桌面         -
ECHO.       -    （J） 手动检查文件完整度           -
ECHO.       -    （U） 手动检查hiper更新           -
ECHO.       -    （H） 打开HiPer帮助              -
ECHO.       ---------------------------------------
ECHO.       -       网卡状态：【%tapsater%】          -
ECHO.       ---------------------------------------
ECHO.       -  注：无凭证入网每30分钟切断一次连接 -
ECHO.       -      版本：0.5.0   作者：梦游泪世   -
ECHO.       -      BUG反馈/邀请码购买/使用咨询    -
ECHO.       -             作者QQ:944390394        -
ECHO.       -          官方①群：235256586        -
ECHO.       -          官方②群：212927890        -
ECHO.       ---------------------------------------
ECHO.       -        启动日期：%date%    -
ECHO.       -          启动时间：%time%      -
ECHO.       ---------------------------------------
echo.请输入选择项目的序号：
set /p ID=
if “%id%”==“1” goto Installationtap

if “%id%”==“2” goto saterHiPer

if “%id%”==“3” goto saterHiPerfree

if “%id%”==“4” goto chatfree

if “%id%”==“5” goto cmd5

if “%id%”==“J” goto zj
if “%id%”==“j” goto zj

if “%id%”==“114514” goto cmd8

if “%id%”==“u” goto UP

if “%id%”==“U” goto UP
if “%id%”==“H” goto help
if “%id%”==“h” goto help
goto menu

:az
echo [ 未检测到Hiper所需的虚拟网卡 ]
echo 按任意键前往安装
pause
goto Installationtap

:Installationtap
if not exist C:\Windows\System32\drivers\tap0901.sys goto cmd1.1
::这里是判断用户是否安装过虚拟网卡 https://zhidao.baidu.com/question/1046357538354738819.html
echo 检测到你已经安装了虚拟网卡，继续安装可能会出现问题，确定要这么做吗
echo 输入 y 确认安装；输入 n 结束安装
set /p ID=
if “%id%”==“n” goto menu
echo 安装程序已打开，安装即可！
echo 本程序不会对你的计算机造成伤害，请放心
echo 若有杀毒软件拦截，请恢复他并加入白名单
call %appdata%\hiper\tap-windows.exe
goto menu

:saterHiPer
if %tapsater%==未安装 goto az
start saterhiper
cls
goto menu

:saterHiPerfree
if %tapsater%==未安装 goto az
start saterhiperfree
cls
goto menu

:chatfree
start chatfree
cls
goto menu

:cmd5
@echo off
set "exe=HiPer启动程序.exe"
set "lnk=HiPer启动程序"
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\%lnk%.lnk""):b.TargetPath=""%~dp0%exe%"":b.WorkingDirectory=""%~dp0"":b.Save:close")
echo 完成
cls
goto menu


:zj
cls
echo ------------------------自检报告-----------------------
echo 网卡安装程序：【%tapexamine%】
echo hiper主程序 ：【%hiperexamine%】
echo 聊天程序：【%chatfreeexamine%】
echo 免费联机模块：【%saterhiperexamine%】
echo 凭证联机模块： 【%saterhiperfreeexamine%】
echo 下载模块：【%wgetexamine%】
echo 网卡状态：【%tapsater%】
echo -------------------------------------------------------
pause
goto menu

:cmd5
start https://mcer.cn/shop?ref=azAtwBwzp
cls
goto menu


:UP
%appdata%\hiper\wget.exe  -P %appdata%\hiper -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/hiper.exe
%appdata%\hiper\wget.exe  -P %appdata%\hiper  -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/tap-windows.exe
pause
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










:help
cls
ECHO.       ---------------HiPer帮助页面-----------
ECHO.       -    （1） 打开凭证购买页面(货币兑换) -
ECHO.       -    （2） 打开凭证购买页面(积分兑换) -
ECHO.       -    （3） 打开HiPer教程 （起风了吗） -
ECHO.       -    （4） 打开HiPer教程 （梦游泪世） -
ECHO.       -    （5） 手动检查hiper更新          -
ECHO.       -    （H） 回到主菜单                 -
echo.       ---------------------------------------
echo.请输入选择项目的序号：
set /p help=
if “%help%”==“1” goto help1
if “%help%”==“2” goto help2
if “%help%”==“3” goto help3
if “%help%”==“4” goto help4
if “%help%”==“5” goto help5
if “%help%”==“H” goto menu
if “%help%”==“h” goto menu
goto help

:help1
start https://mcer.cn/shop/370.html?ref=azAtwBwzp
cls
goto help

:help2
start https://mcer.cn/shop/387.html?ref=azAtwBwzp
cls
goto help

:help3
start https://zkitefly.github.io/hiper-d/playminecraft.html
cls
goto help


:help4
start https://mcer.cn/463.html?ref=azAtwBwzp
cls
goto help

:help5
start https://mcer.cn/circle/491.html?ref=azAtwBwzp
cls
goto help
