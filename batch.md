# Websites
- https://ss64.com/nt

# [START](https://ss64.com/nt/start.html)
```
Is used to start a program, command or batch script, opens in a new window

START "title" [/D path] [options] "command" [parameters]
/D - Working Directory
/W - Wait
/B - Run in Background
/MAX - Windows size
/HIGH - CPU Priority
```

# [CMD](https://ss64.com/nt/cmd.html)
```
CMD [is used to start a new cmd shell and (optionally) run an inline command or executable program]
/C - Run Command and then terminate
/K - Run Command and then remain open
/Q - Turn echo off
/T - Color
```

# [CALL](https://ss64.com/nt/call.html)
```
CALL [is used to call one batch program from another]
CALL file.bat "myparams"
```

# EXPLORER
```
explorer.exe /e,/root,"%temp%"
explorer.exe /select,"%temp%"
explorer.exe  "C:\Program Files"
%SystemRoot%\explorer.exe  "C:\Program Files"
```

# Batch File Location
* `%~dp0` location of batch file
* `cd /D  %~dp0` back to the original path from where the batch file was run

# Directory Store Location
* `pushd %TEMP%` go to user's temp dir, and remember
* `pushd \Windows` go to windows dir, and remember
* `popd` go back one dir, in this case the temp dir
* `popd` go back one more dir, in this where you were before temp

# Set Command
* `set SOME_VARIABLE=%CD%` Set Command
* `cd %SOME_VARIABLE%` use it with %%

# Alias Command
* `alias SOME_VARIABLE=%CD%` Alias Command
* `cd SOMEVARIABLE` use it without %%

# Set Window Size
```bat
Mode con cols=60 lines=20
```

# Color Fonts
```bat
Color 0C & echo(
echo This is diplayed in red
```

# Title in the Batch File Window
```bat
Title Drag and drop a folder
```

# Get Input from User
```bat
set /P mypath="drag the folder "
echo the path is %mypath%
```

same thing but with a default value
```bat
set "var=ThisIsDefaultValue"
set /p "var=[%var%] "
```

# %1
- `%*` all params
- `%1` first param
- `%~1` expands %1 removing any surrounding quotes (")
- `%~f1` expands %1 to a fully qualified path name
- `%~d1` expands %1 to a drive letter only
- `%~p1` expands %1 to a path only
- `%~n1` expands %1 to a file name only
- `%~x1` expands %1 to a file extension only
- `%~s1` expanded path contains short names only
- `%~a1` expands %1 to file attributes
- `%~t1` expands %1 to date/time of file
- `%~z1` expands %1 to size of file

# ECHO
- `@echo off`
- `echo.` blank line
- `echo contra`

# Comments
- `rem some instructions` works when `@echo off` is not applied 
- `:: some comments` totally ignored

# TYPE
`type demo.txt` displays file text

# CHOICE
better than using `set /p`

# IF ELSE
```bat
IF "%~1" neq "somepath"
IF %1 neq "somepath"
IF %1 equ "somepath"
```


```
%CD%
%TIME%
%DATE%
%RANDOM%
%CD%
&&
--%
PAUSE
EXIT
```

# EXAMPLES

`START "TitleIsCompulsory" /D "D:\MyProject" /B /W "C:\Windows\Notepad.exe"`  
`START "" /d "C:\" /w "C:\Program Files\nodejs\node.exe" "C:\learn\main-server\server.js"`  
`cmd /k node "main-server/server.js"`

Inline approach  
`START /B CMD /C CALL "foo.bat" [args [...]]`

If you don't want the output:  
`START /B CMD /C CALL "foo.bat" [args [...]] >NUL 2>&1`

If you want the bat to be run on an independent console: (i.e. another window)  
`START CMD /C CALL "foo.bat" [args [...]]`

If you want the other window to hang around afterwards:  
`START CMD /K CALL "foo.bat" [args [...]]`  
`Note: This is actually poor form instead use PAUSE at the end of the bat file. Or even yet, add ^& PAUSE if it is inline command:`  
`START CMD /C CALL "foo.bat" [args [...]] ^& PAUSE`

Below are mine, might not be correct
```bat
START "test" /d "C:\" /w "C:\Program Files\nodejs\node.exe" "C:\learn\main-server\server.js"
CD folder && CMD /k npm install something -g
CMD /k node "main-server/server.js"
CMD /k start Apache25\bin\httpd.exe
```

---

```bat

:: Get all arguments.
set input=%*
:: Get input path(s) if needed.
if not defined input set /p "input=Enter MKV path(s): "
:: Exit if no input.
if not defined input exit /b
:: Display each argument (optional code).
if defined input for %%A in (%input%) do echo input: %%A
:: Call each argument which can be a file or folder.
for %%A in (%input%) do call :step_1 "%%~A"
pause
exit /b
:step_1
echo 
:: Exit if not MKV file.
if /i not "%~x1" == ".mkv" exit /b 1
```
---

```bat
IF "%~1" EQU "" Goto:Error
::**********************************************************
CD /D "%~1">nul 2>&1 && Goto:OpenWithExplorer || Goto :OpenWithNotepad
Exit /b
::**********************************************************
:OpenWithNotepad <File>
Start "Drag and Drop" "%windir%\system32\Notepad.exe" "%~1"
Exit /b
::**********************************************************
:OpenWithExplorer <Folder>
Explorer "%~1"
Exit /b
::**********************************************************
:Error
echo no path found
Exit /b
::**********************************************************
Timeout /T 5 /NoBreak >nul

pause
```
---
