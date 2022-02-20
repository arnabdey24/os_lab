@echo off

setlocal EnableDelayedExpansion

set key=%1%

set path=%2%



for /r "%path%" %%i in (%key%) do (
	echo %%i
)

pause