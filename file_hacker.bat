@echo off
title MultiTool - by Ebola Man
chcp 65001 >nul
cd file
color 2
:start
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo  (1) IP
echo  (2) linux
set /p input="--->  " 
if /I %input% EQU 1 start IP.bat
if /I %input% EQU 2 start linux.bat
cls
goto start

:banner
echo.
echo.
echo ██     ██  █████  ████████  ██████ ██   ██         ██████   ██████   ██████  
echo ██     ██ ██   ██    ██    ██      ██   ██         ██   ██ ██    ██ ██       
echo ██  █  ██ ███████    ██    ██      ███████         ██   ██ ██    ██ ██   ███ 
echo ██ ███ ██ ██   ██    ██    ██      ██   ██         ██   ██ ██    ██ ██    ██ 
echo  ███ ███  ██   ██    ██     ██████ ██   ██ ███████ ██████   ██████   ██████  
echo.                                                                              
echo.                                                                              
echo ██    ██  ██     ██████                                                      
echo ██    ██ ███    ██  ████                                                     
echo ██    ██  ██    ██ ██ ██                                                     
echo  ██  ██   ██    ████  ██                                                     
echo   ████    ██ ██  ██████                                                      
echo.                                                                                                                                                          
echo ███████ ██ ██      ███████                                                   
echo ██      ██ ██      ██                                                        
echo █████   ██ ██      █████                                                     
echo ██      ██ ██      ██                                                        
echo ██      ██ ███████ ███████                                                   
echo.
echo.