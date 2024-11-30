@echo off
@chcp 65001>nul
@title MAT tweakers - add a file extension to explorer.exe context menu
:s
echo /!\ ATTENTION: Toute valeur systeme supprimée n'est pas récupérable par cet outil! Entrez "ok" pour confirmer!
set /p "INPUT="
if NOT "%INPUT%"=="ok" goto s
set /P "EXT=Extension du fichier à supprimer:"
echo Output:
reg DELETE "HKEY_CLASSES_ROOT\.%EXT%\ShellNew" /v "NullFile" /f
reg DELETE "HKEY_CLASSES_ROOT\.%EXT%\ShellNew" /v "ItemName" /f

pause
