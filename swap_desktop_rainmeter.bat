@echo off
	setlocal
		rd "%userprofile%\Desktop"
		mklink /j "%userprofile%\Desktop" "%homedrive%\mas\desktop_default\icons1"
		taskkill /F /IM Rainmeter.exe
		%homedrive%\mas\refresh.vbs
		start "" "%ProgramFiles%\Rainmeter\Rainmeter.exe"
	endlocal
exit