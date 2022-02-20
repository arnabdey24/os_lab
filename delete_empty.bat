@echo off

setlocal EnableDelayedExpansion

set "flag=0"

for /f "delims=" %%i in ('dir /s /b /ad ^| sort /r') do (
	set "flag=0"
	echo "%%i" 
	dir /b "%%i" | findstr "^" >nul
	if !errorlevel! == 1 (
		echo deleting "%%i"
		rd "%%i"
	)
)
pause