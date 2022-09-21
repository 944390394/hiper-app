::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCiDJFGNyEMhcUxOAQeXJTztS+VMuaby7OXn
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
::Zh4grVQjdCiDJFGNyEo5OB5GcAGQLmSoSLAE7Yg=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
::以上是bat编译软件生成
if %1=="1" goto 001
if %1=="2" goto 002
if %1=="3" goto 003

:002
call mshta vbscript:MSGBOX("启动器被意外关闭",48,"注意")(window.close)
exit

:001
call mshta vbscript:MSGBOX("HiPer进程已结束",48,"注意")(window.close)
exit

:003
call mshta vbscript:MSGBOX("无法启动HiPer",48,"注意")(window.close)
exit