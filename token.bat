@echo off


for /f "tokens=1,2 delims= " %%i in (t.txt) do (
	echo %%i
	echo %%j
	echo %%k
)

pause