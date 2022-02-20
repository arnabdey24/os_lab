@echo off 

:top
echo [Type exit/EXIT to quit]
set /p input=Enter a number: 

if %input%==exit goto down
if %input%==EXIT goto down

set /a remainder= %input% %%2

if %remainder% == 0 (set result=even) else (set result=odd)
echo %result%
pause
cls
goto top
:down