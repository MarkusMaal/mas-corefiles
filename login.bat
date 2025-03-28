@echo off
ping localhost -n 2 >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\Winlogon" /v Shell /d explorer.exe
if exist C:\mas\noauto goto specifygg
exit

:specifygg
cls
Echo.
Echo Sisselogimine
Echo.
set /p user=Sisestage konto nimi:
runas /user:MARKUSE-ARVUTI\%user% "%SystemRoot%\explorer.exe"
exit