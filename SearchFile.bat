@echo off

set filename=*%2*%3

:: the drive or path to search. (In this case searching current drive)
set searchPath=%1

:: If the file is found. This variable will be set
set foundFilePath=

:: echos all found paths and returns the last occurrance of the file path
FOR /R "%searchPath%" %%a  in (%filename%) DO (
    IF EXIST "%%~fa" (
        echo "%%~fa" 
        SET foundFilePath=%%~fa
    )
)

IF Not EXIST "%foundFilePath%" (
    echo Could not find file  under '%searchPath%'
) 
pause