@echo off
@title MAT tweakers - add an file extension to explorer.exe context menu
set /P "INPUT=Extension du fichier a ajouter:"
echo Output:
reg add "HKEY_CLASSES_ROOT\.%INPUT%\ShellNew" /v "NullFile" /t REG_SZ /d "" /f
reg add "HKEY_CLASSES_ROOT\.%INPUT%\ShellNew" /v "ItemName" /t REG_EXPAND_SZ /d "@%SystemRoot%\\System32\\acppage.dll,-6000" /f

pause
