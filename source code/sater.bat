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
title Hiper��������
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
echo **  δ�ܲ⵽hiper�����뷵�ز˵������� **
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
echo       ****   ��ӭʹ��Hiper������������   ****
echo       ***************************************
echo       **       �� Ŀǰ�Ѽ�鵽֤���       **
echo       **    ��ȷ�����ƾ֤�� �� ��Ч���� ��**
echo       **     �����������N��������֤��     **
echo       ***************************************
echo.
set /p aaa=���������������Hiper������N��������֤��
if ��%aaa%��==��N�� goto bcz
if ��%aaa%��==��n�� goto bcz
goto zc


:bcz
color 8b
CLS
echo   ��ǰ����·���ǣ�
echo   %CD%
echo   �ѻ�ȡ����ԱȨ��
echo   ***************************
echo   **��ӭʹ������HiPer������**
echo   ***************************
echo   *    �ű����ߣ���������   *
echo   *    ƾ֤ ������  ����    *
echo   *    QQ: 944390394        *
echo   +++++++++++++++++++++++++++
echo    =   ����Կ���뵽�·�    =
echo    =   ���»س��������    =
echo    = ����ʱ����رմ˴���  =
echo    ��������������������������
set plus=error
set /p plus=���������Կ��
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
echo   =  ���ƺ�û�������κ�ƾ֤Ŷ  =
echo   =     ������һ�����԰�       =
echo   =  û��ƾ֤����û�취������  =
echo   ������������������������������
pause > NUL
goto bcz

:wfxz
color 4F
cls
echo   ++++++++++++++++++++++++++++++
echo   = ���޷�ͨ�������Կ����֤�� =
echo   = ������Կ�Ƿ񳬹�����ʱЧ =
echo   =  ����Ѱ��Ⱥ�ڹ���Ա�İ���  =
echo   ������������������������������
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
echo ��Ǹ��Hiper��������������˳�������ԭ��
echo ƾ֤�������
echo ƾ֤�ѳ�������
echo 
pause
exit

:zc
color 8b
@echo off
CLS
echo   ��ǰ����·���ǣ�
echo   %CD%
echo   �ѻ�ȡ����ԱȨ��
echo   **********************
echo   **��ӭʹ��Hiper Plus����**
echo   **********************
echo   *�ű����ߣ���������  *
echo   *ƾ֤ ������  ����   *
echo   * QQ��944390394      *
echo   ++++++++++++++++++++++
echo   =����ʱ����رմ˴���=
echo   ����������������������
start %appdata%\hiper\log.exe 
::����hiper
start %appdata%\hiper\Daemon.exe
goto GUI1


@echo off
:GUI1
set myip=δ��⵽HiPer�е�IP
:: ��ȡ����IP
:: ��ipconfig�Ľ������find�����ipconfig����д�ipv4����
:: forѭ����ÿ�ж�ִ�У���ȡIP����myip��
:: /f����������for�����ַ����е����ݣ�ͨ������£�����/f��for����ᴦ���ļ�������/f�ᴦ���ļ��ڵ�����
:: for����Ĭ��ʹ�ÿո�����Ʊ����ÿ�����ݷ�Ϊ����Ԫ�أ�tokens=16�ǵ�16��Ԫ�ؼ�ipֵ

for /f "tokens=16" %%i in ('ipconfig ^|find "6.0"') do (
set myip=%%i
:: ���������find��ѯֻ��һ�н�������������װ�����������ж����������ip��ַ����һ�����Ǳ���IP����ʹ��goto��֤forִֻ��һ�ξ�����ѭ������ֹ����myip��ֵ������
goto yunxin
)
cls
echo  ------------------------------------------------
echo  -                 HiPer  ������
echo  - 
echo  -    ��ǰ״̬�����ڼ��IP��
echo  -                 
echo  -                  ��#****��
echo  -                   
echo  -    �����ַ��%myip%
echo  ------------------------------------------------
timeout /t 1 /nobreak > NUL
if %myip%==δ��⵽HiPer�е�IP goto GUI2
goto yunxin

:GUI2
set myip=δ��⵽HiPer�е�IP
:: ��ȡ����IP
:: ��ipconfig�Ľ������find�����ipconfig����д�ipv4����
:: forѭ����ÿ�ж�ִ�У���ȡIP����myip��
:: /f����������for�����ַ����е����ݣ�ͨ������£�����/f��for����ᴦ���ļ�������/f�ᴦ���ļ��ڵ�����
:: for����Ĭ��ʹ�ÿո�����Ʊ����ÿ�����ݷ�Ϊ����Ԫ�أ�tokens=16�ǵ�16��Ԫ�ؼ�ipֵ

for /f "tokens=16" %%i in ('ipconfig ^|find "6.0"') do (
set myip=%%i
:: ���������find��ѯֻ��һ�н�������������װ�����������ж����������ip��ַ����һ�����Ǳ���IP����ʹ��goto��֤forִֻ��һ�ξ�����ѭ������ֹ����myip��ֵ������
goto yunxin
)
cls
echo  ------------------------------------------------
echo  -                 HiPer  ������
echo  - 
echo  -    ��ǰ״̬�����ڼ��IP��
echo  -                 
echo  -                  ��*#***��
echo  -                   
echo  -    �����ַ��%myip%
echo  ------------------------------------------------
timeout /t 1 /nobreak > NUL
if %myip%==δ��⵽HiPer�е�IP goto GUI3
goto yunxin

:GUI3
set myip=δ��⵽HiPer�е�IP
:: ��ȡ����IP
:: ��ipconfig�Ľ������find�����ipconfig����д�ipv4����
:: forѭ����ÿ�ж�ִ�У���ȡIP����myip��
:: /f����������for�����ַ����е����ݣ�ͨ������£�����/f��for����ᴦ���ļ�������/f�ᴦ���ļ��ڵ�����
:: for����Ĭ��ʹ�ÿո�����Ʊ����ÿ�����ݷ�Ϊ����Ԫ�أ�tokens=16�ǵ�16��Ԫ�ؼ�ipֵ

for /f "tokens=16" %%i in ('ipconfig ^|find "6.0"') do (
set myip=%%i
:: ���������find��ѯֻ��һ�н�������������װ�����������ж����������ip��ַ����һ�����Ǳ���IP����ʹ��goto��֤forִֻ��һ�ξ�����ѭ������ֹ����myip��ֵ������
goto yunxin
)
cls
echo  ------------------------------------------------
echo  -                 HiPer  ������
echo  - 
echo  -    ��ǰ״̬�����ڼ��IP��
echo  -                 
echo  -                  ��**#**��
echo  -                   
echo  -    �����ַ��%myip%
echo  ------------------------------------------------
timeout /t 1 /nobreak > NUL
if %myip%==δ��⵽HiPer�е�IP goto GUI4
goto yunxin

:GUI4
set myip=δ��⵽HiPer�е�IP
:: ��ȡ����IP
:: ��ipconfig�Ľ������find�����ipconfig����д�ipv4����
:: forѭ����ÿ�ж�ִ�У���ȡIP����myip��
:: /f����������for�����ַ����е����ݣ�ͨ������£�����/f��for����ᴦ���ļ�������/f�ᴦ���ļ��ڵ�����
:: for����Ĭ��ʹ�ÿո�����Ʊ����ÿ�����ݷ�Ϊ����Ԫ�أ�tokens=16�ǵ�16��Ԫ�ؼ�ipֵ

for /f "tokens=16" %%i in ('ipconfig ^|find "6.0"') do (
set myip=%%i
:: ���������find��ѯֻ��һ�н�������������װ�����������ж����������ip��ַ����һ�����Ǳ���IP����ʹ��goto��֤forִֻ��һ�ξ�����ѭ������ֹ����myip��ֵ������
goto yunxin
)
cls
echo  ------------------------------------------------
echo  -                 HiPer  ������
echo  - 
echo  -    ��ǰ״̬�����ڼ��IP��
echo  -                 
echo  -                  ��***#*��
echo  -                   
echo  -    �����ַ��%myip%
echo  ------------------------------------------------
timeout /t 1 /nobreak > NUL
if %myip%==δ��⵽HiPer�е�IP goto GUI5
goto yunxin

:GUI5
set myip=δ��⵽HiPer�е�IP
:: ��ȡ����IP
:: ��ipconfig�Ľ������find�����ipconfig����д�ipv4����
:: forѭ����ÿ�ж�ִ�У���ȡIP����myip��
:: /f����������for�����ַ����е����ݣ�ͨ������£�����/f��for����ᴦ���ļ�������/f�ᴦ���ļ��ڵ�����
:: for����Ĭ��ʹ�ÿո�����Ʊ����ÿ�����ݷ�Ϊ����Ԫ�أ�tokens=16�ǵ�16��Ԫ�ؼ�ipֵ

for /f "tokens=16" %%i in ('ipconfig ^|find "6.0"') do (
set myip=%%i
:: ���������find��ѯֻ��һ�н�������������װ�����������ж����������ip��ַ����һ�����Ǳ���IP����ʹ��goto��֤forִֻ��һ�ξ�����ѭ������ֹ����myip��ֵ������
goto yunxin
)
cls
echo  ------------------------------------------------
echo  -                 HiPer  ������
echo  - 
echo  -    ��ǰ״̬�����ڼ��IP��
echo  -                 
echo  -                  ��****#��
echo  -                   
echo  -    �����ַ��%myip%
echo  ------------------------------------------------
timeout /t 1 /nobreak > NUL
if %myip%==δ��⵽HiPer�е�IP goto GUI1
goto yunxin







:yunxin
set tc=0
color 2f
cls
echo  ------------------------------------------------
echo  -                 HiPer  ������
echo  -    ������x������ʯ-��ѿ�������������     
echo  - 
echo  -    ��ǰ״̬�������ɹ�
echo  -
echo  -    �����ַ��%myip% ��Ϸ�˿ڣ�%duankou%
echo  ------------------------------------------------          
echo  -   ��1��������Ϸ�˿ں� ��2��������Ϸ����ǽ(������)   
echo  -                       
echo  -   ��3��PCL(������)   ��4��HMCL(������)
echo  -
::echo  -   ��3������PCL������  ��4������HMCL������
echo  -   ��5��mc���䣨���뷽ʹ�ã����������ţ�
echo  -         (N)�˳���������������
echo  ------------------------------------------------
set /p tc=������ѡ����Ŀ����ţ�
if %tc%==N goto tc
if %tc%==n goto tc
goto yunxin

:tc
taskkill /f /im hiper.exe
taskkill /f /im Daemon.exe
exit

:sb
color 4F
echo ��Ǹ��Hiper��������������˳�������ԭ��
echo ƾ֤�������
echo ƾ֤�ѳ�������
pause
start menu.exe




