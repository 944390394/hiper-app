::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCiDJFGNyEM7O0lZARGPbjizS+VMuaby7OXn
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
::Zh4grVQjdCiDJFGNyEo5OB5GcBeDKGOzFvsZ8O2b
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
echo 获取公网IP
@echo on
curl ifconfig.me
@echo off
echo 获取启动日期
echo 日期：%date:~8,2%年%date:~3,2%月%date:~0,2%日
echo 获取启动
echo 时间：%time:~0,2%时%time:~3,2%分%time:~6,2%秒
echo 启动Hiper
echo ————————————————————————
echo 以下是hiper日志
@echo on
call %appdata%\hiper\hiper.exe
@echo off
echo 结束
echo 日期：%date:~8,2%年%date:~3,2%月%date:~0,2%日 时间：%time:~0,2%时%time:~3,2%分%time:~6,2%秒
echo by梦游
