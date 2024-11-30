@echo off
chcp 65001 >nul
@title MAT tweakers - Modify the shell application.
if "%1"=="Repair" goto repair
:s
echo /!\ WARNING!!! MODIFY THE SHELL APPLICATION CAN STOP THE GOOD WINDOWS WORK!!! Entrez "ok" pour confirmer!
set /p "INPUT="
if NOT "%INPUT%"=="ok" goto s
set /P "INPUT2=New shell application:"
echo do you really want to modify the shell of you computer to "%INPUT2%"? (y)
set /p "INPUT="
if NOT "%INPUT%"=="y" goto s
echo Output:
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "%INPUT2%" /f

pause
exit 

:repair 
echo /!\ ATTENTION: Réparer le shell de l'ordinateur va écrasser le shell existant! Entrez "ok" pour confirmer!
set /p "INPUT="
if NOT "%INPUT%"=="ok" goto repair 
echo Output:
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "explorer.exe" /f
