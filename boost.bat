@echo off
if exist C:\mas\worklog.txt del C:\mas\worklog.txt
if exist C:\mas\boost1.txt del C:\mas\boost1.txt
if exist C:\mas\boost2.txt del C:\mas\boost2.txt
if exist C:\mas\boost3.txt del C:\mas\boost3.txt
@echo.>>C:\mas\boost1.txt
start "" /wait "C:\mas\boost.vbs"
@echo.>>C:\mas\boost2.txt
start "" /wait "C:\mas\startup_optimize.bat"
@echo.>>C:\mas\boost3.txt
del "C:\mas\start1.log"
del "C:\mas\start2.log"
del "C:\mas\start3.log"
del "C:\mas\start4.log"
del "C:\mas\start5.log"
del "C:\mas\start6.log"
del "C:\mas\start7.log"
del "C:\mas\finish.log"
@echo.>>C:\mas\finishboost.txt
exit