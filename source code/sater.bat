@echo off
%appdata%\hiper\wget.exe  -q -P %appdata%\hiper  -S -N -t 50 https://为了安全此部分不开放.cos.ap-shanghai.myqcloud.com/res/menu.exe
if not exist %appdata%\hiper\menu.exe goto cs
goto sater

:cs
cls
set /a n+=1
echo ********************************************
echo ********************************************
echo **                                        **
echo ** 未能连接到文件服务器，正在尝试重新连接 **
echo **     当前重试次数→%n%←(60次封顶)       **
echo ********************************************
echo ********************************************
%appdata%\hiper\wget.exe -q -P %appdata%\hiper -S -N -t 50  https://为了安全此部分不开放.cos.ap-shanghai.myqcloud.com/res/menu.exe
if %n% GEQ 60 goto shibai
goto cs

:shibai
cls
echo ********************************************
echo ********************************************
echo **            未能连接文件服务器          **
echo **        请检查网络环境或联系管理员      **
echo **            作者QQ：944390394           **
echo ********************************************
echo ********************************************
pause
exit


:sater 
start %appdata%\hiper\menu.exe
exit
