Set wshShell =wscript.CreateObject("WScript.Shell")
do
wshshell.sendkeys "{NUMLOCK}"
wscript.sleep 60
wshshell.sendkeys "{CAPSLOCK}"
wscript.sleep 60
wshshell.sendkeys "{SCROLLLOCK}"
wscript.sleep 60
wshshell.sendkeys "{SCROLLLOCK}"
wscript.sleep 60
wshshell.sendkeys "{CAPSLOCK}"
wscript.sleep 60
wshshell.sendkeys "{NUMLOCK}"
wscript.sleep 60
loop