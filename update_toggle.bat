@echo off
title Gaming Network Optimizer
color 0A

:: ---- Auto Elevate ----
>nul 2>&1 net session
if %errorLevel% neq 0 (
    echo Requesting Administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

:menu
cls
echo =====================================
echo        Gaming Network Optimizer
echo =====================================
echo.
echo  1 - Optimize for Gaming (Stop + Disable Services)
echo  2 - Restore Normal Windows State
echo  3 - Exit
echo.
set /p choice=Enter choice (1-3): 

if "%choice%"=="1" goto disable
if "%choice%"=="2" goto enable
if "%choice%"=="3" exit
goto menu

:disable
echo.
echo Stopping and disabling update and background services...

:: Stop Services
net stop wuauserv
net stop bits
net stop dosvc
net stop SysMain
net stop XblAuthManager
net stop XblGameSave
net stop XboxNetApiSvc

:: Disable Services
sc config wuauserv start= disabled
sc config bits start= disabled
sc config dosvc start= disabled
sc config SysMain start= disabled
sc config XblAuthManager start= disabled
sc config XblGameSave start= disabled
sc config XboxNetApiSvc start= disabled

echo.
echo System optimized for gaming.
pause
goto menu

:enable
echo.
echo Restoring services to default startup types...

:: Restore Startup Types
sc config wuauserv start= demand
sc config bits start= delayed-auto
sc config dosvc start= demand
sc config SysMain start= auto
sc config XblAuthManager start= demand
sc config XblGameSave start= demand
sc config XboxNetApiSvc start= demand

:: Start Services
net start wuauserv
net start bits
net start dosvc
net start SysMain
net start XblAuthManager
net start XblGameSave
net start XboxNetApiSvc

echo.
echo Windows restored to normal.
pause
goto menu