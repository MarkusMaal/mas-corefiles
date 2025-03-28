@echo off
:retry
set /a attempt=%attempt%+1
SET /A application=%RANDOM% * 20 / 32768 + 1
if not "%attempt%"=="20" goto retry
if "%application%"=="1" goto app1
if "%application%"=="2" goto app2
if "%application%"=="3" goto app3
if "%application%"=="4" goto app4
if "%application%"=="5" goto app5
if "%application%"=="6" goto app6
if "%application%"=="7" goto app7
if "%application%"=="8" goto app8
if "%application%"=="9" goto app9
if "%application%"=="10" goto app10
if "%application%"=="11" goto app11
if "%application%"=="12" goto app12
if "%application%"=="13" goto app13
if "%application%"=="14" goto app14
if "%application%"=="15" goto app15
if "%application%"=="16" goto app16
if "%application%"=="17" goto app17
if "%application%"=="18" goto app18
if "%application%"=="19" goto app19
if "%application%"=="20" goto app20
goto retry

:app1
start "" "C:\Users\Markus Maal\Documents\Visual Studio 2015\Projects\Pidu!\Pidu!\bin\Debug\Pidu!.exe"
exit

:app2
call :calol
if "%drive%"=="" goto retry
start "" "%drive%:\launcher\M„lupulk\bin\Debug\M„lupulk.exe"
exit

:app3
start "" "C:\mas\boost.vbs"
start "" "C:\mas\message.vbs"
exit

:app4
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe"
exit

:app5
C:
cd %ProgramFiles%
cd TmUnitedForever
start "" "C:\Program Files\TmUnitedForever\TmForeverLauncher.exe"
exit

:app6
start WINWORD.EXE
exit

:app7
start EXCEL.EXE
exit

:app8
start POWERPNT.EXE
exit

:app9
start explorer.exe
exit

:app10
start "" "::{ED228FDF-9EA8-4870-83b1-96b02CFE0D52}"
exit

:app11
call :calol
start "" "%drive%:\markuse asjad"
exit

:app12
start "" "C:\mas\badmessage.vbs"
exit

:app13
start "" "C:\Program Files\Microsoft Virtual PC\VirtualPC.exe"
exit

:app14
start notepad.exe
exit

:app15
start "" "C:\Users\Markus Maal\Documents\Visual Studio 2010\Projects\Click it!\Click it!\bin\Debug\Click it!.exe"
exit

:app16
start "" "C:\Program Files\Microsoft Games\Solitaire\Solitaire.exe"
exit

:app17
start "" "C:\Program Files\Microsoft Games\Minesweeper\Minesweeper.exe"
exit

:app18
start "" "C:\Program Files\Microsoft Games\Mahjong\Mahjong.exe"
exit

:app19
start
exit

:app20
start "" "C:\Program Files\Pivot Animator\pivot.exe"
exit
:calol
if exist K:\NTFS\config.sys set drive=K&goto :eof
if exist A:\NTFS\config.sys set drive=A&goto :eof
if exist B:\NTFS\config.sys set drive=B&goto :eof
if exist C:\NTFS\config.sys set drive=C&goto :eof
if exist D:\NTFS\config.sys set drive=D&goto :eof
if exist E:\NTFS\config.sys set drive=E&goto :eof
if exist F:\NTFS\config.sys set drive=F&goto :eof
if exist G:\NTFS\config.sys set drive=G&goto :eof
if exist H:\NTFS\config.sys set drive=H&goto :eof
if exist I:\NTFS\config.sys set drive=I&goto :eof
if exist J:\NTFS\config.sys set drive=J&goto :eof
if exist L:\NTFS\config.sys set drive=L&goto :eof
if exist M:\NTFS\config.sys set drive=M&goto :eof
if exist N:\NTFS\config.sys set drive=N&goto :eof
if exist O:\NTFS\config.sys set drive=O&goto :eof
if exist P:\NTFS\config.sys set drive=P&goto :eof
if exist Q:\NTFS\config.sys set drive=Q&goto :eof
if exist R:\NTFS\config.sys set drive=R&goto :eof
if exist S:\NTFS\config.sys set drive=S&goto :eof
if exist T:\NTFS\config.sys set drive=T&goto :eof
if exist U:\NTFS\config.sys set drive=U&goto :eof
if exist V:\NTFS\config.sys set drive=V&goto :eof
if exist W:\NTFS\config.sys set drive=W&goto :eof
if exist X:\NTFS\config.sys set drive=X&goto :eof
if exist Y:\NTFS\config.sys set drive=Y&goto :eof
if exist Z:\NTFS\config.sys set drive=Z&goto :eof