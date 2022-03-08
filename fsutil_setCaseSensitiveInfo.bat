@echo off
echo %CD%
echo %~dp0
fsutil.exe file setCaseSensitiveInfo %~dp0 enable
pause