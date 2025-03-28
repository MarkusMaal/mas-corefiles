@echo off
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
REG ADD HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon /v Shell /t REG_SZ /d "C:\mas\Markuse asjad\Markuse arvuti lukustamiss steem.exe" /f
taskkill /F /IM explorer.exe
taskkill /F /IM Rainmeter.exe
:a
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
timeout 5s ping localhost >nul
if not exist %HOMEDRIVE%\mas\un.lock goto a
del %HOMEDRIVE%\mas\un.lock
REG ADD HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon /v Shell /t REG_SZ /d explorer /f
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
exit