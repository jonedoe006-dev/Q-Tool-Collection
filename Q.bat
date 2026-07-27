@echo off

title Q: Tool Collection
color 0A
Rem MODE CON: COLS=100 LINES=30

for /F %%A in ('echo prompt $E ^| cmd') do set "ESC=%%A"

set "Red=%ESC%[91m"
set "White=%ESC%[0m"
set "Yellow=%ESC%[93m"
set "Reset=%ESC%[92m"
set "Blue=%ESC%[94m"
set "Cyan=%ESC%[96m"
set "Redacted=%ESC%[102m"
set "EndRedacted=%ESC%[104m"
set "Test1=%ESC%[103m"

:Menu
cls
echo.
echo                                    ------------------------
echo                                    Hello %USERNAME%, welllcome
echo                                    ------------------------
echo              QQQQQQQQ
echo            QQQ      QQQ
echo           QQQ        QQQ
echo           QQQ        QQQ
echo          QQQ          QQQ
echo           QQQ        QQQ
echo           QQQ        QQQ
echo            QQQ      QQQ
echo              QQQQQQQQ
echo                    QQQQ
echo by %Yellow%"Jonathan Doe"%Reset%
echo.
timeout /t 1 /nobreak > nul
echo.
set /p cmnd="Type command: "

IF %cmnd% == help goto Help
IF %cmnd% == mrt goto MSRT
IF %cmnd% == ping goto Ping
IF %cmnd% == netstat goto Netstat
IF %cmnd% == tracert goto Tracert
IF %cmnd% == ip tracker goto IP_Tracker
ELSE goto Error Message


:Error Message
cls
echo.
echo Oops!
echo That's not a Q command
echo Type "help" to see the list
echo And remember only use lowercase
pause>NUL
goto Menu

:Help
cls
echo 'help'
echo Show the list of commands
echo.
echo 'ping'
echo Check the connectivity with Google DNS
echo.
echo 'mrt'
echo Execute the %Red%Windows Malicious Software Removal Tool%Reset%
echo.
echo 'tracert'
echo Shows the path the data follow from your PC to Google DNS
echo.
echo 'netstat' %Red%Defectuosa!%Reset%
echo --------------
pause>NUL
goto Menu

:Ping
cls
ping 8.8.8.8
pause>NUL
goto Menu

:Netstat
cls
netstat -ano
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause>NUL
goto Menu

:Tracert
cls
echo.
set /p trace="Write the IP: "
tracert %trace%
pause>NUL
goto Menu

:IP_Tracker
cls
echo %NUMBER_OF_PROCESSORS%
pause>NUL
goto Menu

:MSRT
cls
mrt.exe
echo Running...
