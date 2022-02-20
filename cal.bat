@echo off 
:top
echo [Type exit/EXIT to quit]
set /p equation=

if %equation%==exit goto down
if %equation%==EXIT goto down

set /a result=%equation%
echo %result%
pause
cls
goto top
:down