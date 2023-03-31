@ECHO off
Mode con cols=60 lines=20
TITLE DELETE FOLDER
Color 4F
SET /P mypath="DRAG THE FOLDER HERE ==> "
DEL /F /Q /S "%mypath%" > NUL
RMDIR /Q /S "%mypath%"
EXIT
