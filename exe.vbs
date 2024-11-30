Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("Shell.Application")
' Get path.
strCurrentDirectory = objFSO.GetAbsolutePathName(".")
' Build path.
htaFile = """" & strCurrentDirectory & "\index.hta" & """"
' Launcher command.
cmd = "/c cd " & strCurrentDirectory & " & start """" " & htaFile
objShell.ShellExecute "cmd.exe", cmd, "", "runas", 1
