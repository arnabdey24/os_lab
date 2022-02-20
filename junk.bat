@echo off
setlocal EnableDelayedExpansion
echo TYPE EXIT TO TERMINATE
echo DEF : Find and Delete Empty Folders
echo DDF : Find and Delete Duplicate Folders
set/p "number=>"
if %number%==EXIT goto end
if %number%==DEF goto deleteEmptyFolder
if %number%==DDF goto deleteDuplicate


:deleteEmptyFolder
set/p "sourcePath=Enter dir path>"
echo Empty Folders are :

set file=C:\emptyFolderList.txt
set emptyCounter=0
for /R "%sourcePath%" %%a in (.) do (
 Pushd %%a
 call :getFolderState "%%a"
 Popd )

SET a=Found 
SET b=empty folder 
SET c=%a% %emptyCounter% %b% 
echo %c%
if %emptyCounter%==0 echo Nothing to delete & pause >nul & goto  end 

set/p "delete=Enter y to delete these empty folders >"
if %delete%==y goto delete

:getFolderState 

call :checkFolder "%~f1" 
set RESULT=%ERRORLEVEL% 
if %RESULT% equ 3 echo Folder doesn't exist & goto end
if %RESULT% equ 0  echo "%~f1" & echo %~f1>>%file% & set /a emptyCounter+=1
@exit /b   

:checkFolder 
if not exist "%~f1" exit /b 3 
for /F "eol=| delims=" %%I in ('dir "%~f1" /AD /B 2^>nul') do exit /b 2
for %%I in ("%~f1\*") do exit /b 1 
exit /b 0 

:delete
if not exist %file% echo Nothing to delete ! & pause > nul & goto end
set count=0
for /f "tokens=*" %%x in (%file%) do (
    set /a count+=1
    rmdir /s /q "%%x"
)
echo Folder deleted successfully !
del %file%

pause >nul
@exit /b   


goto end
:deleteDuplicate



set "source_folder=C:\Users\Rayhan B Khan\Desktop\lab\1" 
set "folder2=C:\Users\Rayhan B Khan\Desktop\lab\2" 
set "folder1=C:\Users\Rayhan B Khan\Desktop\lab\3" 


setlocal enableDelayedExpansion
for %%F in ("%source_folder%\*") do ( 

    if exist "%folder2%\%%~nxF" ( 
        echo deleting "%folder2%\%%~nxF"  at !date! !time!
        del /q /f "%folder2%\%%~nxF" 
        if exist "%folder2%\%%~nxF" echo deleting failed 

    )

    if exist "%folder1%\%%~nxF" ( 
        echo deleting "%folder1%\%%~nxF" at !date! !time! 
        del /q /f "%folder1%\%%~nxF" 
        if exist "%folder1%\%%~nxF" echo deleting failed 
    )
) 



echo deleted successfully
pause
goto end

:end