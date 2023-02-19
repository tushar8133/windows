https://ss64.com


## [BATCH](https://ss64.com/nt)
* @echo off
* echo 123
* ## Comments
* `::` line will be ignored and line output is not displayed
* `rem` line will be ignored, but still the line output is shown in command window, except @echo scenarios
* ## Batch File Location
* `%~dp0` location of batch file
* `cd /D  %~dp0` back to the original path from where the batch file was run
* ## Directory Store Location
* `pushd %TEMP%` go to user's temp dir, and remember
* `pushd \Windows` go to windows dir, and remember
* `popd` go back one dir, in this case the temp dir
* `popd` go back one more dir, in this where you were before temp
* ## Set Command
* `set SOME_VARIABLE=%CD%` Set Command
* `cd %SOME_VARIABLE%` use it with %%
* ## Alias Command
* `alias SOME_VARIABLE=%CD%` Alias Command
* `cd SOMEVARIABLE` use it without %%

## [START](https://ss64.com/nt/start.html)
```
Is used to start a program, command or batch script, opens in a new window

START "title" [/D path] [options] "command" [parameters]
/D - Working Directory
/W - Wait
/B - Run in Background
/MAX - Windows size
/HIGH - CPU Priority
```

## [CMD](https://ss64.com/nt/cmd.html)
```
CMD [is used to start a new cmd shell and (optionally) run an inline command or executable program]
/C - Run Command and then terminate
/K - Run Command and then remain open
/Q - Turn echo off
/T - Color
```

## [CALL](https://ss64.com/nt/call.html)
```
CALL [is used to call one batch program from another]
CALL file.bat "myparams"
```

## EXPLORER
```
explorer.exe /e,/root,"%temp%"
explorer.exe /select,"%temp%"
explorer.exe  "C:\Program Files"
%SystemRoot%\explorer.exe  "C:\Program Files"
```

```
%CD%
%TIME%
%DATE%
%RANDOM%
%CD%
&&
--%
Echo MYVOICE
REM is a comment
:: is also comment
PAUSE
EXIT
```

EXAMPLES

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
```
START "test" /d "C:\" /w "C:\Program Files\nodejs\node.exe" "C:\learn\main-server\server.js"
CD folder && CMD /k npm install something -g
CMD /k node "main-server/server.js"
CMD /k start Apache25\bin\httpd.exe
```

