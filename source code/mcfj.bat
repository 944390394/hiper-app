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
::������bat�����������

@echo off
set path==%path%;%appdata%\hiper
title MC����������������
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
set IP=��δ����
set duanko=��δ����
CLS
echo     ��ǰ����·���ǣ�%CD%
echo     �ѻ�ȡ����ԱȨ��
echo     **********************
echo     **��ӭʹ��MC����������������**
echo     **********************
echo     *�ű����ߣ���������  *
echo     *ƾ֤ ������  ����   *
echo     * QQ��944390394      *
echo   ++++++++++++++++++++++
echo   =  �����뷿����HiPer�е�IP  =
echo   =   �� �������Ϣ   �� =
echo   =   IP:%IP%   =
echo   =   ��Ϸ�˿�:%duanko%   =
echo   ����������������������
set /p IP=���뷿����Hiper�е�IP��ַ��
goto 002

:002
CLS
echo     ��ǰ����·���ǣ�%CD%
echo     �ѻ�ȡ����ԱȨ��
echo     **********************
echo     **��ӭʹ��MC��������������**
echo     **********************
echo     *�ű����ߣ���������  *
echo     *ƾ֤ ������  ����   *
echo     * QQ��944390394      *
echo   ++++++++++++++++++++++
echo   =  �����뷿����MC�еĶ˿�  =
echo   =   �� �������Ϣ   �� =
echo   =   IP:%IP%  =
echo   =   ��Ϸ�˿�:%duanko%  =
echo   ����������������������
set /p duanko=���뷿��MC�п��ŵĶ˿ڣ�
goto 003

:003
CLS
echo     ��ǰ����·���ǣ�%CD%
echo     �ѻ�ȡ����ԱȨ��
echo     **********************
echo     **��ӭʹ��MC��������������**
echo     **********************
echo     *�ű����ߣ���������  *
echo     *ƾ֤ ������  ����   *
echo     * QQ��944390394      *
echo   ++++++++++++++++++++++
echo   =  �����������У�����رա� =
echo   =   �� �������Ϣ   �� =
echo   =   IP:%IP%  =
echo   =   ��Ϸ�˿�:%duanko%  = 
echo   ����������������������
set /p qd=��ȷ����Ϣ���󣬰��س���������
if ��%qd%��==��O�� goto 001
if ��%qd%��==��o�� goto 001
goto 004









:004
CLS
echo     ��ǰ����·���ǣ�%CD%
echo     �ѻ�ȡ����ԱȨ��
echo     **********************
echo     **��ӭʹ��MC��������������**
echo     **********************
echo     *�ű����ߣ���������  *
echo     *ƾ֤ ������  ����   *
echo     * QQ��944390394      *
echo   ++++++++++++++++++++++
echo   =  �����뷿����HiPer�е�IP  =
echo   =   �� �������Ϣ   �� =
echo   =   IP:%IP%  =
echo   =   ��Ϸ�˿�:%duanko%  =
echo   ����������������������
echo ��������������ˢ��mc������Ϸ���棬����Ƿ��ܿ�������
color 2f
mcb.exe -addr %IP%:%duanko%
@echo off
color 4F
echo.
echo.
echo ��Ǹ��MC�����������������������˳�������ԭ��
echo IP�������
echo ����δ����HIPER
echo ���뷽δ����HIPER
pause
exit





