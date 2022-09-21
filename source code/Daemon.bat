::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCiDJFGNyENjehoEARyILHKyS+VMuaby7OXn
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCiDJFGNyEo5OB5GcCCDOWa1CPsZ8O2b
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
::以上是bat编译软件生成
set /a S=1
:start
choice /t 1 /d y /n >nul 
tasklist|find "hiper.exe" 
if %errorlevel%==0 ( 
	echo "hiper 存活"
	goto hiper
) else (
	echo "No" 
	set /a S+=1
)
choice /t 1 /d y /n >nul 
tasklist|find /i "sater.exe" 
if %errorlevel%==0 ( 
	echo "启动器 存活"
) else (
	echo "启动器 死亡" 
	taskkill /f /im hiper.exe
	taskkill /f /im sater.exe
	goto cw2
)
if %S% GEQ 10 goto cw3
goto start  

:hiper
choice /t 5 /d y /n >nul 
tasklist|find /i "sater.exe" 
if %errorlevel%==0 ( 
	echo "启动器 存活"
) else (
	echo "启动器 死亡" 
	taskkill /f /im hiper.exe
	taskkill /f /im sater.exe
	goto cw1
)
goto hiper  （循环）


:cw1
start %appdata%\hiper\error.exe "1"
exit

:cw2
start %appdata%\hiper\error.exe "2"
exit

:cw3
start %appdata%\hiper\error.exe "3"
exit