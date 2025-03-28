@echo off
taskkill /F /IM explorer.exe
start /wait C:\mas\change_shell.exe
start explorer.exe
exit
