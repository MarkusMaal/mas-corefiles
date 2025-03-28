@echo off
	setlocal EnableDelayedExpansion
		:a
			tasklist /fi "ImageName eq Rainmeter.exe" /fo csv 2>NUL | find /I "Rainmeter.exe">NUL
			if "%ERRORLEVEL%"=="0" taskkill /IM Rainmeter.exe 2>NUL >NUL
			if not "%ERRORLEVEL%"=="0" goto b
			if "!loopcount!"=="100" goto b
			set /a loopcount+=1
			goto a
		:b
			set "drive=-"
			for %%a in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
				if exist "%%a:\Mine" (
					set "drive=%%a"
				)
			)
			if "!drive!"=="-" exit /b
			rd /s /q "%userprofile%\Desktop"
			mklink /j "%userprofile%\Desktop" "!drive!:\Mine"
			%homedrive%\mas\refresh.vbs
	endlocal
exit