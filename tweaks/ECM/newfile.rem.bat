@echo off
@chcp 65001>nul
@title MAT tweakers - add a file extension to explorer.exe context menu
:s
echo /!\ WARNING: Any value deleted will not be recovered with this tool ! Type "ok" to confirm!
set /p "INPUT="
if NOT "%INPUT%"=="ok" goto s
set /P "EXT=File extension to erase:"
echo Output:
reg DELETE "HKEY_CLASSES_ROOT\.%EXT%\ShellNew" /v "NullFile" /f
reg DELETE "HKEY_CLASSES_ROOT\.%EXT%\ShellNew" /v "ItemName" /f

pause
