@echo off

:top
echo [Type exit/EXIT to quit]
set /p input=Enter a number: 

if %input%==exit goto down
if %input%==EXIT goto down

set result=Prime
if %input% LSS 2 set result=Not prime

set i=2
set /a count=%input%-1
	:a
	if %i% GEQ %count% goto b
	set /a remainder= %input% %% %i%
	if %remainder%==0 set result=Not prime
	set /a i= %i% + 1
	goto a
	:b


echo %result%
pause
cls
goto top
:down