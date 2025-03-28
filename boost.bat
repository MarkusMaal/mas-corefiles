@echo off
setlocal EnableDelayedExpansion EnableExtensions
rd %temp% /s /q
taskkill /F /IM wmplayer.exe
taskkill /F /IM wmpnetwk.exe
taskkill /F /IM vmware-authd.exe
taskkill /F /IM vmnat.exe
start %homedrive%\mas\boost.vbs
ping localhost -n 4 >nul
@echo.>>C:\mas\end.txt
exit