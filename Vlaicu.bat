@echo off
cls
color 07
setlocal enabledelayedexpansion
title Vlaicu OS Minda SP3
mode con: lines=42 cols=119

:cfg
cls
< user\bckgnd.ini (
set /p null=
set /p back=
)

:betaload
echo Press 1 to Start system
set /p thsys=">"
if %thsys% == 1 goto logscr

:logscr
cls
insertbmp /p:"img\log\1.bmp" /x:0 /y:0 /z:100
ping localhost -n 1,2 >nul
insertbmp /p:"img\log\2.bmp" /x:0 /y:0 /z:100
ping localhost -n 1,2 >nul
insertbmp /p:"img\log\3.bmp" /x:0 /y:0 /z:100
ping localhost -n 1,2 >nul

insertbmp /p:"img\log\4.bmp" /x:0 /y:0 /z:100
ping localhost -n 1,2 >nul
goto :logon

:logon
cls
if exist log.set goto :2log
if not exist log.set goto :1log
:1log
insertbmp /p:"img\log\4.bmp" /x:0 /y:0 /z:100
insertbmp /p:"img\log\bar.bmp" /x:400 /y:354 /z:100
insertbmp /p:"img\log\user.bmp" /x:410 /y:210 /z:100
insertbmp /p:"img\log\bar.bmp" /x:400 /y:389 /z:100
insertbmp /p:"img\log\init.bmp" /x:0 /y:0 /z:100
batbox /g 51 30 /c 0xf0 /d ""
set /p use=
set user=%use%
batbox /g 51 33 /c 0xf0 /d ""
set /p pass=
set password=%pass%
(
echo %pass%
echo %user%
) >log.set
goto :end

:2log
insertbmp /p:"img\log\4.bmp" /x:0 /y:0 /z:100
insertbmp /p:"img\log\bar.bmp" /x:400 /y:354 /z:100
insertbmp /p:"img\log\user.bmp" /x:410 /y:210 /z:100
insertbmp /p:"img\log\bar.bmp" /x:400 /y:389 /z:100
batbox /g 51 30 /c 0xf0 /d ""
set /p us=
batbox /g 51 33 /c 0xf0 /d ""
set /p pas=
< log.set (
set /p password=
set /p user=
)
if %us% == %user% set use1=ok
if not %us% == %user% goto :2log
if %pas% == %password% goto :desktop
if not %pas% == %password% goto :2log
if not %use1% == ok goto :2log
pause >nul
ping localhost -n 1 >nul
goto :2log

:end
ping localhost -n 1,5 >nul
goto :desktop

:desktop
sounds\startsound
color 08
bg cursor 0
cls
insertbmp /p:"%back%" /x:0 /y:0 /z:100
insertbmp /p:"img\tb.bmp" /x:0 /y:477 /z:100
insertbmp /p:"img\tbs.bmp" /x:845 /y:477 /z:100
insertbmp /p:"img\tob.bmp" /x:0 /y:477 /z:100
insertbmp /p:"img\tools\filer.bmp" /x:40 /y:40 /z:100
insertbmp /p:"img\tools\pm.bmp" /x:160 /y:40 /z:100
insertbmp /p:"img\tools\cmdlogo.bmp" /x:280 /y:40 /z:100
insertbmp /p:"img\tools\notepad.bmp" /x:400 /y:40 /z:100
insertbmp /p:"img\tools\calc.bmp" /x:520 /y:40 /z:100
insertbmp /p:"img\tools\icube.bmp" /x:640 /y:40 /z:100
batbox /g 107 40 /c 0x07 /d "%time%"

rem clic
for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
set c=%%c
set y=%%b
set x=%%a
)
rem toolbar cfg
if %x% equ 0 if %y% equ 39 goto :mo
if %x% equ 0 if %y% equ 40 goto :mo
if %x% equ 0 if %y% equ 41 goto :mo
if %x% equ 1 if %y% equ 39 goto :mo
if %x% equ 1 if %y% equ 40 goto :mo
if %x% equ 1 if %y% equ 41 goto :mo
if %x% equ 2 if %y% equ 39 goto :mo
if %x% equ 2 if %y% equ 40 goto :mo
if %x% equ 2 if %y% equ 41 goto :mo
if %x% equ 3 if %y% equ 39 goto :mo
if %x% equ 3 if %y% equ 40 goto :mo
if %x% equ 3 if %y% equ 41 goto :mo
rem floppy cfg
if %x% equ 5 if %y% equ 3 goto :fe
if %x% equ 5 if %y% equ 4 goto :fe
if %x% equ 5 if %y% equ 5 goto :fe
if %x% equ 5 if %y% equ 6 goto :fe
if %x% equ 5 if %y% equ 7 goto :fe
if %x% equ 5 if %y% equ 8 goto :fe
if %x% equ 6 if %y% equ 3 goto :fe
if %x% equ 6 if %y% equ 4 goto :fe
if %x% equ 6 if %y% equ 5 goto :fe
if %x% equ 6 if %y% equ 6 goto :fe
if %x% equ 6 if %y% equ 7 goto :fe
if %x% equ 6 if %y% equ 8 goto :fe
if %x% equ 7 if %y% equ 3 goto :fe
if %x% equ 7 if %y% equ 4 goto :fe
if %x% equ 7 if %y% equ 5 goto :fe
if %x% equ 7 if %y% equ 6 goto :fe
if %x% equ 7 if %y% equ 7 goto :fe
if %x% equ 7 if %y% equ 8 goto :fe
if %x% equ 8 if %y% equ 3 goto :fe
if %x% equ 8 if %y% equ 4 goto :fe
if %x% equ 8 if %y% equ 5 goto :fe
if %x% equ 8 if %y% equ 6 goto :fe
if %x% equ 8 if %y% equ 7 goto :fe
if %x% equ 8 if %y% equ 8 goto :fe
if %x% equ 9 if %y% equ 3 goto :fe
if %x% equ 9 if %y% equ 4 goto :fe
if %x% equ 9 if %y% equ 5 goto :fe
if %x% equ 9 if %y% equ 6 goto :fe
if %x% equ 9 if %y% equ 7 goto :fe
if %x% equ 9 if %y% equ 8 goto :fe
if %x% equ 10 if %y% equ 3 goto :fe
if %x% equ 10 if %y% equ 4 goto :fe
if %x% equ 10 if %y% equ 5 goto :fe
if %x% equ 10 if %y% equ 6 goto :fe
if %x% equ 10 if %y% equ 7 goto :fe
if %x% equ 10 if %y% equ 8 goto :fe
if %x% equ 11 if %y% equ 3 goto :fe
if %x% equ 11 if %y% equ 4 goto :fe
if %x% equ 11 if %y% equ 5 goto :fe
if %x% equ 11 if %y% equ 6 goto :fe
if %x% equ 11 if %y% equ 7 goto :fe
if %x% equ 11 if %y% equ 8 goto :fe
if %x% equ 12 if %y% equ 3 goto :fe
if %x% equ 12 if %y% equ 4 goto :fe
if %x% equ 12 if %y% equ 5 goto :fe
if %x% equ 12 if %y% equ 6 goto :fe
if %x% equ 12 if %y% equ 7 goto :fe
if %x% equ 12 if %y% equ 8 goto :fe
rem settings cfg
if %x% equ 20 if %y% equ 3 goto :settings
if %x% equ 20 if %y% equ 4 goto :settings
if %x% equ 20 if %y% equ 5 goto :settings
if %x% equ 20 if %y% equ 6 goto :settings
if %x% equ 20 if %y% equ 7 goto :settings
if %x% equ 20 if %y% equ 8 goto :settings
if %x% equ 21 if %y% equ 3 goto :settings
if %x% equ 21 if %y% equ 4 goto :settings
if %x% equ 21 if %y% equ 5 goto :settings
if %x% equ 21 if %y% equ 6 goto :settings
if %x% equ 21 if %y% equ 7 goto :settings
if %x% equ 21 if %y% equ 8 goto :settings
if %x% equ 22 if %y% equ 3 goto :settings
if %x% equ 22 if %y% equ 4 goto :settings
if %x% equ 22 if %y% equ 5 goto :settings
if %x% equ 22 if %y% equ 6 goto :settings
if %x% equ 22 if %y% equ 7 goto :settings
if %x% equ 22 if %y% equ 8 goto :settings
if %x% equ 23 if %y% equ 3 goto :settings
if %x% equ 23 if %y% equ 4 goto :settings
if %x% equ 23 if %y% equ 5 goto :settings
if %x% equ 23 if %y% equ 6 goto :settings
if %x% equ 23 if %y% equ 7 goto :settings
if %x% equ 23 if %y% equ 8 goto :settings
if %x% equ 24 if %y% equ 3 goto :settings
if %x% equ 24 if %y% equ 4 goto :settings
if %x% equ 24 if %y% equ 5 goto :settings
if %x% equ 24 if %y% equ 6 goto :settings
if %x% equ 24 if %y% equ 7 goto :settings
if %x% equ 24 if %y% equ 8 goto :settings
if %x% equ 25 if %y% equ 3 goto :settings
if %x% equ 25 if %y% equ 4 goto :settings
if %x% equ 25 if %y% equ 5 goto :settings
if %x% equ 25 if %y% equ 6 goto :settings
if %x% equ 25 if %y% equ 7 goto :settings
if %x% equ 25 if %y% equ 8 goto :settings
if %x% equ 26 if %y% equ 3 goto :settings
if %x% equ 26 if %y% equ 4 goto :settings
if %x% equ 26 if %y% equ 5 goto :settings
if %x% equ 26 if %y% equ 6 goto :settings
if %x% equ 26 if %y% equ 7 goto :settings
if %x% equ 26 if %y% equ 8 goto :settings
if %x% equ 27 if %y% equ 3 goto :settings
if %x% equ 27 if %y% equ 4 goto :settings
if %x% equ 27 if %y% equ 5 goto :settings
if %x% equ 27 if %y% equ 6 goto :settings
if %x% equ 27 if %y% equ 7 goto :settings
if %x% equ 27 if %y% equ 8 goto :settings
rem cmd cfg
if %x% equ 35 if %y% equ 3 goto :cmd
if %x% equ 35 if %y% equ 4 goto :cmd
if %x% equ 35 if %y% equ 5 goto :cmd
if %x% equ 35 if %y% equ 6 goto :cmd
if %x% equ 35 if %y% equ 7 goto :cmd
if %x% equ 35 if %y% equ 8 goto :cmd
if %x% equ 36 if %y% equ 3 goto :cmd
if %x% equ 36 if %y% equ 4 goto :cmd
if %x% equ 36 if %y% equ 5 goto :cmd
if %x% equ 36 if %y% equ 6 goto :cmd
if %x% equ 36 if %y% equ 7 goto :cmd
if %x% equ 36 if %y% equ 8 goto :cmd
if %x% equ 37 if %y% equ 3 goto :cmd
if %x% equ 37 if %y% equ 4 goto :cmd
if %x% equ 37 if %y% equ 5 goto :cmd
if %x% equ 37 if %y% equ 6 goto :cmd
if %x% equ 37 if %y% equ 7 goto :cmd
if %x% equ 37 if %y% equ 8 goto :cmd
if %x% equ 38 if %y% equ 3 goto :cmd
if %x% equ 38 if %y% equ 4 goto :cmd
if %x% equ 38 if %y% equ 5 goto :cmd
if %x% equ 38 if %y% equ 6 goto :cmd
if %x% equ 38 if %y% equ 7 goto :cmd
if %x% equ 38 if %y% equ 8 goto :cmd
if %x% equ 39 if %y% equ 3 goto :cmd
if %x% equ 39 if %y% equ 4 goto :cmd
if %x% equ 39 if %y% equ 5 goto :cmd
if %x% equ 39 if %y% equ 6 goto :cmd
if %x% equ 39 if %y% equ 7 goto :cmd
if %x% equ 39 if %y% equ 8 goto :cmd
if %x% equ 40 if %y% equ 3 goto :cmd
if %x% equ 40 if %y% equ 4 goto :cmd
if %x% equ 40 if %y% equ 5 goto :cmd
if %x% equ 40 if %y% equ 6 goto :cmd
if %x% equ 40 if %y% equ 7 goto :cmd
if %x% equ 40 if %y% equ 8 goto :cmd
if %x% equ 41 if %y% equ 3 goto :cmd
if %x% equ 41 if %y% equ 4 goto :cmd
if %x% equ 41 if %y% equ 5 goto :cmd
if %x% equ 41 if %y% equ 6 goto :cmd
if %x% equ 41 if %y% equ 7 goto :cmd
if %x% equ 41 if %y% equ 8 goto :cmd
if %x% equ 42 if %y% equ 3 goto :cmd
if %x% equ 42 if %y% equ 4 goto :cmd
if %x% equ 42 if %y% equ 5 goto :cmd
if %x% equ 42 if %y% equ 6 goto :cmd
if %x% equ 42 if %y% equ 7 goto :cmd
if %x% equ 42 if %y% equ 8 goto :cmd
rem notepad cfg
if %x% equ 50 if %y% equ 3 goto :notepad
if %x% equ 50 if %y% equ 4 goto :notepad
if %x% equ 50 if %y% equ 5 goto :notepad
if %x% equ 50 if %y% equ 6 goto :notepad
if %x% equ 50 if %y% equ 7 goto :notepad
if %x% equ 50 if %y% equ 8 goto :notepad
if %x% equ 51 if %y% equ 3 goto :notepad
if %x% equ 51 if %y% equ 4 goto :notepad
if %x% equ 51 if %y% equ 5 goto :notepad
if %x% equ 51 if %y% equ 6 goto :notepad
if %x% equ 51 if %y% equ 7 goto :notepad
if %x% equ 51 if %y% equ 8 goto :notepad
if %x% equ 52 if %y% equ 3 goto :notepad
if %x% equ 52 if %y% equ 4 goto :notepad
if %x% equ 52 if %y% equ 5 goto :notepad
if %x% equ 52 if %y% equ 6 goto :notepad
if %x% equ 52 if %y% equ 7 goto :notepad
if %x% equ 52 if %y% equ 8 goto :notepad
if %x% equ 53 if %y% equ 3 goto :notepad
if %x% equ 53 if %y% equ 4 goto :notepad
if %x% equ 53 if %y% equ 5 goto :notepad
if %x% equ 53 if %y% equ 6 goto :notepad
if %x% equ 53 if %y% equ 7 goto :notepad
if %x% equ 53 if %y% equ 8 goto :notepad
if %x% equ 54 if %y% equ 3 goto :notepad
if %x% equ 54 if %y% equ 4 goto :notepad
if %x% equ 54 if %y% equ 5 goto :notepad
if %x% equ 54 if %y% equ 6 goto :notepad
if %x% equ 54 if %y% equ 7 goto :notepad
if %x% equ 54 if %y% equ 8 goto :notepad
if %x% equ 55 if %y% equ 3 goto :notepad
if %x% equ 55 if %y% equ 4 goto :notepad
if %x% equ 55 if %y% equ 5 goto :notepad
if %x% equ 55 if %y% equ 6 goto :notepad
if %x% equ 55 if %y% equ 7 goto :notepad
if %x% equ 55 if %y% equ 8 goto :notepad
if %x% equ 56 if %y% equ 3 goto :notepad
if %x% equ 56 if %y% equ 4 goto :notepad
if %x% equ 56 if %y% equ 5 goto :notepad
if %x% equ 56 if %y% equ 6 goto :notepad
if %x% equ 56 if %y% equ 7 goto :notepad
if %x% equ 56 if %y% equ 8 goto :notepad
if %x% equ 57 if %y% equ 3 goto :notepad
if %x% equ 57 if %y% equ 4 goto :notepad
if %x% equ 57 if %y% equ 5 goto :notepad
if %x% equ 57 if %y% equ 6 goto :notepad
if %x% equ 57 if %y% equ 7 goto :notepad
if %x% equ 57 if %y% equ 8 goto :notepad
rem calc cfg
if %x% equ 65 if %y% equ 3 goto :calc
if %x% equ 65 if %y% equ 4 goto :calc
if %x% equ 65 if %y% equ 5 goto :calc
if %x% equ 65 if %y% equ 6 goto :calc
if %x% equ 65 if %y% equ 7 goto :calc
if %x% equ 65 if %y% equ 8 goto :calc
if %x% equ 66 if %y% equ 3 goto :calc
if %x% equ 66 if %y% equ 4 goto :calc
if %x% equ 66 if %y% equ 5 goto :calc
if %x% equ 66 if %y% equ 6 goto :calc
if %x% equ 66 if %y% equ 7 goto :calc
if %x% equ 66 if %y% equ 8 goto :calc
if %x% equ 67 if %y% equ 3 goto :calc
if %x% equ 67 if %y% equ 4 goto :calc
if %x% equ 67 if %y% equ 5 goto :calc
if %x% equ 67 if %y% equ 6 goto :calc
if %x% equ 67 if %y% equ 7 goto :calc
if %x% equ 67 if %y% equ 8 goto :calc
if %x% equ 68 if %y% equ 3 goto :calc
if %x% equ 68 if %y% equ 4 goto :calc
if %x% equ 68 if %y% equ 5 goto :calc
if %x% equ 68 if %y% equ 6 goto :calc
if %x% equ 68 if %y% equ 7 goto :calc
if %x% equ 68 if %y% equ 8 goto :calc
if %x% equ 69 if %y% equ 3 goto :calc
if %x% equ 69 if %y% equ 4 goto :calc
if %x% equ 69 if %y% equ 5 goto :calc
if %x% equ 69 if %y% equ 6 goto :calc
if %x% equ 69 if %y% equ 7 goto :calc
if %x% equ 69 if %y% equ 8 goto :calc
if %x% equ 70 if %y% equ 3 goto :calc
if %x% equ 70 if %y% equ 4 goto :calc
if %x% equ 70 if %y% equ 5 goto :calc
if %x% equ 70 if %y% equ 6 goto :calc
if %x% equ 70 if %y% equ 7 goto :calc
if %x% equ 70 if %y% equ 8 goto :calc
if %x% equ 71 if %y% equ 3 goto :calc
if %x% equ 71 if %y% equ 4 goto :calc
if %x% equ 71 if %y% equ 5 goto :calc
if %x% equ 71 if %y% equ 6 goto :calc
if %x% equ 71 if %y% equ 7 goto :calc
if %x% equ 71 if %y% equ 8 goto :calc
if %x% equ 72 if %y% equ 3 goto :calc
if %x% equ 72 if %y% equ 4 goto :calc
if %x% equ 72 if %y% equ 5 goto :calc
if %x% equ 72 if %y% equ 6 goto :calc
if %x% equ 72 if %y% equ 7 goto :calc
if %x% equ 72 if %y% equ 8 goto :calc

:BSOD1
echo Error
ping localhost -n 2.5 >nul
cls
call sysfail\bsod\bsod1.bat

:BSOD2
echo Error
ping localhost -n 2.5 >nul
cls
call sysfail\bsod\bsod2.bat

:BSOD3
echo Error
ping localhost -n 2.5 >nul
cls
call sysfail\bsod\bsod3.bat

:BSOD4
echo Error
ping localhost -n 2.5 >nul
cls
call sysfail\bsod\bsod4.bat

rem ----------------
rem : TOOLBAR ZONE :
rem ----------------
:mo
insertbmp /p:"img\tools\TM.bmp" /x:0 /y:253 /z:100
goto :looptb

rem clic
:looptb
for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
set c=%%c
set y=%%b
set x=%%a
)
rem toolbar cfg quit
if %x% equ 0 if %y% equ 39 goto :endtb
if %x% equ 0 if %y% equ 40 goto :endtb
if %x% equ 0 if %y% equ 41 goto :endtb
if %x% equ 1 if %y% equ 39 goto :endtb
if %x% equ 1 if %y% equ 40 goto :endtb
if %x% equ 1 if %y% equ 41 goto :endtb
if %x% equ 2 if %y% equ 39 goto :endtb
if %x% equ 2 if %y% equ 40 goto :endtb
if %x% equ 2 if %y% equ 41 goto :endtb
if %x% equ 3 if %y% equ 39 goto :endtb
if %x% equ 3 if %y% equ 40 goto :endtb
if %x% equ 3 if %y% equ 41 goto :endtb
rem shutdown
if %x% equ 1 if %y% equ 38 goto :shutdown
if %x% equ 2 if %y% equ 38 goto :shutdown
if %x% equ 3 if %y% equ 38 goto :shutdown
if %x% equ 4 if %y% equ 38 goto :shutdown
if %x% equ 5 if %y% equ 38 goto :shutdown
if %x% equ 6 if %y% equ 38 goto :shutdown
if %x% equ 7 if %y% equ 38 goto :shutdown
if %x% equ 8 if %y% equ 38 goto :shutdown
if %x% equ 9 if %y% equ 38 goto :shutdown
rem restart
if %x% equ 1 if %y% equ 36 goto :restart
if %x% equ 2 if %y% equ 36 goto :restart
if %x% equ 3 if %y% equ 36 goto :restart
if %x% equ 4 if %y% equ 36 goto :restart
if %x% equ 5 if %y% equ 36 goto :restart
if %x% equ 6 if %y% equ 36 goto :restart
if %x% equ 7 if %y% equ 36 goto :restart
rem about...
if %x% equ 1 if %y% equ 34 goto :about
if %x% equ 2 if %y% equ 34 goto :about
if %x% equ 3 if %y% equ 34 goto :about
if %x% equ 4 if %y% equ 34 goto :about
if %x% equ 5 if %y% equ 34 goto :about
if %x% equ 6 if %y% equ 34 goto :about
if %x% equ 7 if %y% equ 34 goto :about
goto :looptb

:shutdown
cls
echo.
echo Shutting down VlaicuOS
ping localhost -n 5 >nul
exit

:restart
call reboot.bat

:endtb
ping localhost -n 1 >nul
goto :desktop
rem ------------------
rem : END OF TB ZONE :
rem ------------------

rem |--------------------|
rem |Settings parts of OS|
rem |--------------------|
:settings
cls
color 07
batbox /g 0 2 /c 0x07 /d ""
insertbmp /p:"img\upbarsetting.bmp" /x:0 /y:0 /z:100
bg cursor 0
rem GUI
cmdMenuSel f8%f0 "Background settings" "User settings" "About..." "Exit"
if %ERRORLEVEL% == 1 goto bcksetall
if %ERRORLEVEL% == 2 goto usset
if %ERRORLEVEL% == 3 goto about
if %ERRORLEVEL% == 4 goto exset
rem settings cfg

rem back set

:bcksetall
cls
batbox /g 0 2 /c 0x07 /d ""
insertbmp /p:"img\upbarsetting.bmp" /x:0 /y:0 /z:100
cmdMenuSel f8%f0 "<< Go back" "Image" "Color"
if %ERRORLEVEL% == 1 goto :settings
if %ERRORLEVEL% == 2 goto :bckset
if %ERRORLEVEL% == 3 goto :clset

:bckset
cls
batbox /g 0 2 /c 0x07 /d ""
insertbmp /p:"img\upbarsetting.bmp" /x:0 /y:0 /z:100
cmdMenuSel f8%f0 "<< Go back" "Minda" "Cats"
if %ERRORLEVEL% == 1 goto :bcksetall
if %ERRORLEVEL% == 2 goto :psback
if %ERRORLEVEL% == 3 goto :ctback


:clset
cls
batbox /g 0 2 /c 0x07 /d ""
insertbmp /p:"img\upbarsetting.bmp" /x:0 /y:0 /z:100
cmdMenuSel f8%f0 "<< Go back" "Black"
if %ERRORLEVEL% == 1 goto :bcksetall
if %ERRORLEVEL% == 2 goto :clblack

:psback
del user\bckgnd.ini
(
echo [System Config]
echo img\Minda.bmp
) >user\bckgnd.ini
goto :resetscr

:ctback
del user\bckgnd.ini
(
echo [System Config]
echo img\Cats.bmp
) >user\bckgnd.ini
goto :resetscr

:exset
cls
goto :desktop

:resetscr
cls
insertbmp /p:"img\tools\settings\resetscr.bmp" /x:0 /y:0 /z:100
batbox /g 0 41 /c 0xf0 /d ""
cmdMenuSel f8%f0 "OK"
if %ERRORLEVEL% == 1 goto :rebset
goto :resetscr

:rebset
cls
color 07
call reboot.bat

:usset
cls
batbox /g 0 2 /c 0x07 /d ""
insertbmp /p:"img\upbarsetting.bmp" /x:0 /y:0 /z:100
cmdMenuSel f8%f0 "<< Go back" "Reset your username/password"
if %ERRORLEVEL% == 1 goto :settings
if %ERRORLEVEL% == 2 goto :resetus

:resetus
cls
color 07
batbox /g 0 2 /c 0x07 /d ""
insertbmp /p:"img\upbarsetting.bmp" /x:0 /y:0 /z:100
echo Please choose your new user name:
set /p usres=New username:
echo.
set /p pasres=New password:
(
echo %pasres%
echo %usres%
) >log.set
ping localhost -n 2 >nul
goto :resetscr

:clblack
del user\bckgnd.ini
(
echo [System Config]
echo img\black.bmp
) >user\bckgnd.ini
goto :resetscr

:endset
goto :settings

:fe
cls
color 07
echo Welcome to file explorer !
echo None
echo _
echo.
pause
goto :desktop

:cmd
cls
bg cursor 1
batbox /g 0 1 /c 0x07 /d ""
cmd.exe /k insertbmp /p:"img\upbarcmd.bmp" /x:0 /y:0 /z:100
cls
goto :desktop

rem Notepad zone
:notepad
cls
color 07
insertbmp /p:"img\upbarnp.bmp" /x:0 /y:0 /z:100
bg cursor 1
batbox /g 0 2 /c 0x07 /d ""
:np1
echo Batch Notepad 1.0.0 - Beta 1.0.0
echo Type "quit" to exit
echo.
:np2
rem buged
set /p us=
echo %us% >>tmp.txt
if %us% == quit goto :desktop
ping localhost -n 1 >nul
:np3
set /p us=
echo %us% >>tmp.txt
if %us% == quit goto :desktop
ping localhost -n 1 >nul
goto :np2

:npend
echo Ending..
ping localhost -n 2 >nul
del tmp.txt
goto :desktop

:npsave
set /p us2=Save as name (ex:yourfilename.txt):
ren tmp.txt %us2%
echo.
ping localhost -n 2 >nul
goto :desktop

rem calc zone
:calc
cls
color 07
bg cursor 1
batbox /g 0 2 /c 0x07 /d ""
insertbmp /p:"img\upbarcalc.bmp" /x:0 /y:0 /z:100
echo Welcome to Calculator !
echo Type "Quit" to exit.
echo.
:realcalc
set /p calc1=Computes to do:
set /a calc2=%calc1%
echo Result: %calc2%
echo.
if %calc1% == quit goto :desktop
if %calc1% == Quit goto :desktop
goto :realcalc


:About
insertbmp /p:"img\about.bmp" /x:0 /y:15 /z:100
insertbmp /p:"img\upbarabout.bmp" /x:0 /y:0 /z:100
pause >nul
goto :desktop
