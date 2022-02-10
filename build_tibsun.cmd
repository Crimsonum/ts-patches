@echo off
REM
REM cnc-patch environment config
REM
set PATH=C:\win-builds-patch-32\bin

if not exist "build" mkdir build

gmake clean tibsun.exe
gmake -j4 tibsun.exe
move /Y tibsun.exe ./build/tibsun.exe

set /P c=Generate debug executable [Y/N]?
if /I "%c%" EQU "N" goto :exit

gmake clean tibsun.exe
gmake -j4 WWDEBUG=1 tibsun.exe
move /Y tibsun.exe ./build/tibsun_debug.exe

pause

:exit
exit
