'
' Refresh desktop icons
'
' This script refreshes the desktop, making sure that all of the icons displayed are correct
' and up to date.
'
' This VBScript is called by multiple batch files, that modify the contents of the desktop
'

' This function basically does the same thing as pressing Windows+D, but instead of pressing
' the key combo, we send the command to show the desktop directly to the Windows shell.
function ToggleDesktop()
	' code snippet from https://docs.microsoft.com/en-us/windows/win32/shell/shell-toggledesktop?redirectedfrom=MSDN
	dim objShell

	set objShell = CreateObject("shell.application")
		objShell.ToggleDesktop
	set objShell = nothing
end function

' Initialize WScript.Shell, required for sending the F5 key
Set wshShell = wscript.CreateObject("WScript.Shell")

' Wait and press Windows + D
wscript.sleep 10
ToggleDesktop()

' Wait and press F5
wscript.sleep 100
wshShell.sendkeys "{F5}"

' Wait and press Windows + D again
wscript.sleep 100
ToggleDesktop()
