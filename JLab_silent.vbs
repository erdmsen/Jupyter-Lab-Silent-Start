Dim WShell
Set WShell = CreateObject("WScript.Shell")
WShell.Run "jupyter-lab.exe", 0
Set WShell = Nothing