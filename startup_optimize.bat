@echo off
Echo Markuse arvuti laadimise t””riist
Echo.
Echo PALUN PROGRAMM JŽTKE SEE PROGRAMM AVATUKS!
Echo.
if exist C:\mas\service_loading exit
@echo.>>C:\mas\service_loading
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "" /t REG_SZ /d "explorer.exe" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "" /t REG_SZ /d "explorer.exe" /f
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
start "" "C:\Users\Markus Maal\Documents\Visual Studio 2010\Projects\kontroller\kontroller\Bin\Debug\kontroller.exe"
Echo Viirusetärje laadimine...
start "" "c:\Program Files\Microsoft Security Client\msseces.exe" -hide -runkey
ping localhost -n 15 >nul
if not exist "%SystemRoot%\explorer.exe" call :restore_backup
start explorer.exe
Echo Valmis!
@echo.Loaded msseces.exe>>C:\mas\start1.log
Echo CameraMonitor programmi laadimine
start C:\Windows\vsnpstd3.exe
ping localhost -n 5 >nul
Echo Valmis!
@echo.Loaded camera monitor program>>C:\mas\start2.log
Echo Helidraiverite laadimine
start "" "C:\Program Files\Realtek\Audio\HDA\RtHDVCpl.exe" -s
ping localhost -n 10 >nul
Echo Valmis!
@echo.Loaded realtek audio codec>>C:\mas\start3.log
Echo ATI CCC laadimine
start "" "C:\Program Files\ATI Technologies\ATI.ACE\Core-Static\CLIStart.exe" MSRun
ping localhost -n 10 >nul
Echo Valmis!
@echo.Loaded ATI CCC>>C:\mas\start4.log
Echo LiveTuner jäudluse optimeerimine...
start "" "C:\Program Files\LiveTuner\livecore.exe"
ping localhost -n 25 >nul
Echo Valmis!
@echo.LiveTuner optimization complited>>C:\mas\start5.log
Echo Markuse asjade integratsiooni laadimine...
ping localhost -n 5 >nul
Echo Valmis!
@echo.Kontroller loaded>>C:\mas\start6.log
Echo T””laua keskkonna laadimine...
start "" "C:\mas\test_t””laud.desktop"
ping localhost -n 5 >nul
Echo Valmis!
ping localhost -n 5 >nul
@echo.Desktop loaded>>C:\mas\start7.log
start "" "C:\Users\Markus Maal\AppData\Roaming\7+ Taskbar Tweaker\7+ Taskbar Tweaker.exe" -hidewnd
ping localhost -n 5 >nul
@echo.Finished>>C:\mas\finish.log
del C:\mas\service_loading
goto :eof

:restore_backup
ren "%SystemRoot%\lol.exe" "explorer.exe"
copy "%SystemRoot%\explorer.exe" "%SystemRoot%\lol.exe"
goto :eof