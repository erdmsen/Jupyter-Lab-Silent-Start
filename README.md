# Jupyter-Lab-Silent-Start
#### To start Jupyter-lab without an initial CMD window
The command window which is running before the launch of jupyterlab can be distracting and gets in the way. This is to help everybody to complain about the same problem, and also aimed to be an example for running programs in windows in the background (considering custom EXE files will be problematic on so many angles).

## 1- write a vbs script
write these into a text file and save it with vbs extension (or just use the vbs file i shared):

Dim WShell
Set WShell = CreateObject("WScript.Shell")
WShell.Run "jupyter-lab.exe", 0
Set WShell = Nothing

It is done, lab can be run directly with this file. But if you need some nice shortcut for a pin to taskbar (this script can't be pinned directly) you need to use "wscript.exe" (a standart windows system file). Create the shortcut then write this into the target field of shortcut

C:\Windows\System32\wscript.exe "C:\Python\nb\JLab_silent.vbs"

example:

now you can use this shortcut directly from the task bar. If you want a proper icon you can use the one i share (which i found on web)
