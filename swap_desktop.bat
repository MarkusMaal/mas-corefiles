@echo off
	setlocal EnableDelayedExpansion
		set /a loopcount=0
		:a
			tasklist /fi "ImageName eq Rainmeter.exe" /fo csv 2>NUL | find /I "Rainmeter.exe">NUL
			if "%ERRORLEVEL%"=="0" taskkill /IM Rainmeter.exe 2>NUL >NUL
			if not "%ERRORLEVEL%"=="0" goto b
			if "!loopcount!"=="100" goto b
			set /a loopcount+=1
			goto a
		:b
			taskkill /f /IM Rainmeter.exe 2>nul >nul
			rd /s /q "%userprofile%\Desktop"
			mklink /j "%userprofile%\Desktop" %*
			%homedrive%\mas\refresh.vbs
	endlocal
exit
