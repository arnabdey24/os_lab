@echo off

setlocal EnableDelayedExpansion

set count=0

:start

FOR /r %%i IN (*) DO (
	if not %%i equ %~xnpd0 (
		FOR /r %%j IN (*) DO (
			if not %%j equ %~xnpd0 (   rem relative: %~nx0 , absolute: %~xnpd0
				if not %%i equ %%j (
					fc /lb1 %%i %%j | find "***">NUL
					::echo %%i %%j !ERRORLEVEL!
					if !ERRORLEVEL! equ 0 (
						::set result=1
						echo %%i and %%j non-identical
					) else (
						::set result=0
						echo %%i and %%j identical
						echo deleting %%j as it identical to %%i
						del %%j
						set /a count+=1
						goto start
					)
				)
			)
		)
	)	
)

echo[
echo %count% duplicates files deleted.
pause

