@ECHO OFF

ECHO ...............SHUTDOWN TIMER...................


:start
ECHO[
ECHO ------------------------------------------------
ECHO ** [Press 1] To set a timer                   **
ECHO ** [Press 2] To cancel previously set time    **
ECHO ** [Press 3] To Exit                          **
ECHO ------------------------------------------------
set /p input=

if %input% equ 1 goto set
if %input% equ 2 goto cancel
if %input% equ 3 goto end
if not %input% gtr 3 goto start
if not %input% lss 1 goto start

:set
set /p time=Time in minute: 
set /a time=%time%*60
shutdown -s -t %time%
echo Timer set
pause 
goto end


:cancel
shutdown /a
echo All timer cancelled 
pause
goto end


:end