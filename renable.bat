@echo off
title Akent mitte sulgeda!
taskkill /F /IM kontroller.exe
REG ADD HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon /v Shell /t REG_SZ /d explorer /f
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
Start C:\WINDOWS\explorer.exe
del D:\batch.txt
start "" "C:\Users\MarkusMaal\Documents\StartupMessage\StartupMessage\bin\Release\StartupMessage.exe"
taskkill /F /IM Startup.exe
taskkill /F /IM Startup.vschost.exe
taskkill /F /IM kontroller.exe
cacls C:\WINDOWS\explorer.exe /e /p everyone:f
cacls C:\mas /e /p MarkusMaal:f
cacls "C:\Documents and Settings\makuts\Desktop" /e /p MarkusMaal:f
cacls C:\ /e /p MarkusMaal:f
cacls K:\ /e /p everyone:f
cacls C:\WINDOWS\system32 /e /p MarkusMaal:f
exit