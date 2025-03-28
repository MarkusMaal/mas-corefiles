REG ADD HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon /v Shell /t REG_SZ /d C:\mas\startup\bin\debug\startup.exe /f
start "" "C:\mas\Startup\bin\Debug\Startup.exe"
