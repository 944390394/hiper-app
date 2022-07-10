set path==%path%;%appdata%\hiper
@echo off
echo 注意，接下来要进行下载文件操作再打开软件，这样可以当Hiper更新时自动覆盖旧版Hiper...
echo 不用担心，仅耗费流量大约 5.63 MB (5,908,992 字节)
echo 如果杀毒软件提示拦截 wget.exe 文件，请恢复他并加入白名单！
echo 如果你不想下载，请按 n 退出下载并正常打开软件
echo 请按回车键继续下载...
set /p ID=

if “%id%”==\n goto df

if “%id%”==“n” goto ndf

if “%id%”==“N” goto ndf

:df
echo 如果杀毒软件提示拦截 wget.exe 文件，请恢复他并加入白名单！
echo 正在下载文件，请稍等：）
cd C:\Users\Administrator\AppData\Roaming\hiper
%appdata%\hiper\wget.exe -t 0 https://gitcode.net/chearlai/ff/-/raw/main/hiper.exe -O hiper.exe & %appdata%\hiper\wget.exe -t 0 https://gitcode.net/chearlai/ff/-/raw/main/chat.exe -O chat.exe & %appdata%\hiper\wget.exe -t 0 https://gitcode.net/chearlai/ff/-/raw/main/saterhiper.exe -O saterhiper.exe & %appdata%\hiper\wget.exe -t 0 https://gitcode.net/chearlai/ff/-/raw/main/saterhiperfree.exe -O saterhiperfree.exe -O saterhiperfree.exepause
mode con cols=42 lines=25
title "HiPer启动菜单"
goto menu

:ndf
mode con cols=42 lines=25
title "HiPer启动菜单"
goto menu
:menu
ECHO. -----------HiPer启动程序---------------
ECHO. -    （1）→ 安装HiPer虚拟网卡←      -
ECHO. -（↑注意注意首次启动请先运行此项）  -
ECHO. ---------------------------------------
ECHO. -    （2） 启动HiPer程序 （凭证入网） -
ECHO. -    （3） 启动HiPer程序（无凭证入网）-
ECHO. ---------------------------------------
ECHO. -    （4）启动HiPer聊天室             -
ECHO. ---------------------------------------
ECHO. -    （5） 打开凭证购买页面           -
ECHO. -    （6） 打开HiPer教程              -
ECHO. -    （7） 创建快捷方式到桌面         -
ECHO. ---------------------------------------
ECHO. -  注：无凭证入网每30分钟切断一次连接 -
ECHO. -      版本：0.3.3   作者：梦游泪世   -
ECHO. -    （u） 打开网页手动检查更新         -
ECHO. -      hiper版本：0708                -
ECHO. -      BUG反馈/邀请码购买/使用咨询    -
ECHO. ---------------------------------------
ECHO. -             作者QQ:944390394        -
ECHO. -          官方①群：235256586        -
ECHO. -          官方②群：212927890        -
ECHO. ---------------------------------------
echo.请输入选择项目的序号：
set /p ID=
if “%id%”==“1” goto cmd1

if “%id%”==“2” goto cmd2

if “%id%”==“3” goto cmd3

if “%id%”==“4” goto cmd4

if “%id%”==“5” goto cmd5

if “%id%”==“6” goto cmd6

if “%id%”==“7” goto cmd7

if “%id%”==“114514” goto cmd8

if “%id%”==“u” goto cmdu

if “%id%”==“U” goto cmdu

:cmd1
start %appdata%\hiper\windows-tap\tap-windows-9.21.2.exe
echo 请勿在安装时修改 Destination Folder，即安装目标文件夹！
echo
echo 请放心安装，本程序仅266 KB (272,409字节)
echo
echo 如果你安装过了，请勿再次安装！
echo 
echo 若想卸载，请运行卸载程序：C:\Program Files\TAP-Windows\Uninstall.exe
cls
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
echo 【彩蛋】好臭的数字啊 @a@
goto menu

:cmdu
start https://mcer.cn/circle/491.html?ref=azAtwBwzp
cls
goto menu
