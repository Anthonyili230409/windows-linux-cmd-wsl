@echo off
chcp 65001 >nul
echo you are linux downloads?
pause
 echo are you downloads linux sure Continue? (Y/N)
set /p var=
  if '%var%' == 'y' goto yes
  if '%var%' == 'n' goto no

:yes
echo.
echo.
echo.
echo [94m  ██╗    ██╗███████╗██╗         ██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗  [0m
echo [91m  ██║    ██║██╔════╝██║         ██║     ██║████╗  ██║██║   ██║╚██╗██╔╝  [0m
echo [33m  ██║ █╗ ██║███████╗██║         ██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝   [0m
echo [96m  ██║███╗██║╚════██║██║         ██║     ██║██║╚██╗██║██║   ██║ ██╔██╗   [0m
echo [91m  ╚███╔███╔╝███████║███████╗    ███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗  [0m
echo [32m   ╚══╝╚══╝ ╚══════╝╚══════╝    ╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝  [0m
echo.
echo.
echo.

wsl --install 
                                                                   
pause

:no
 cls
 exit