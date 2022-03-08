ss64.com

START [is used to start a program, command or batch script, opens in a new window]
/D - Working Directory
/W - Wait
/B - Run in Background
/MAX - Windows size
/HIGH - CPU Priority


CMD [is used to start a new cmd shell and (optionally) run an inline command or executable program]
/C - Run Command and then terminate
/K - Run Command and then remain open
/Q - Turn echo off
/T - Color

CALL [is used to call one batch program from another]
CALL file.bat "myparams"

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


EXAMPLES

START "TitleIsCompulsory" /D "D:\MyProject" /B /W "C:\Windows\Notepad.exe"

::Inline approach
START /B CMD /C CALL "foo.bat" [args [...]]

::If you don't want the output:
START /B CMD /C CALL "foo.bat" [args [...]] >NUL 2>&1

::If you want the bat to be run on an independent console: (i.e. another window)
START CMD /C CALL "foo.bat" [args [...]]

::If you want the other window to hang around afterwards:
START CMD /K CALL "foo.bat" [args [...]]
Note: This is actually poor form instead use PAUSE at the end of the bat file. Or even yet, add ^& PAUSE if it is inline command:
START CMD /C CALL "foo.bat" [args [...]] ^& PAUSE

::Below are mine, could not be correct
START "test" /d "C:\" /w "C:\Program Files\nodejs\node.exe" "C:\learn\main-server\server.js"
CD folder && CMD /k npm install something -g
CMD /k node "main-server/server.js"
CMD /k start Apache25\bin\httpd.exe


