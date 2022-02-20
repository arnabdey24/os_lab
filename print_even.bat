@echo off

for /l %%i in (1,1,10) do (
    set a=00%%i
    rem set /a remainder=%a% %%2
    rem if %remainder% == 0 (
		echo %a%
	rem ) 
)

pause