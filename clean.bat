@echo off

echo[

echo ---------------------Deleting Temporary Files---------------------
del /f /s /q %windir%\*.bak
del /s /f /q %WinDir%\Temp\*.*
del /s /f /q %WinDir%\Prefetch\*.*
del /s /f /q %Temp%\*.*
del /s /f /q %AppData%\Temp\*.*
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.*
del /s /f /q %userprofile%\recent\*.*
del /f /s /q %userprofile%\Local Settings\Temporary Internet Files\*.*
echo ---------------------Temporary Files Deleted---------------------

echo[

echo ---------------------Deleting Used Drivers Files---------------------
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /s /f /q %SYSTEMDRIVE%\AMD\*.*
del /s /f /q %SYSTEMDRIVE%\NVIDIA\*.*
del /s /f /q %SYSTEMDRIVE%\INTEL\*.*
echo ---------------------Used Drivers Files Deleted---------------------

echo[

echo ---------------------Deleting Temporary Folders---------------------
rd /s /q %WinDir%\Temp
rd /s /q %WinDir%\Prefetch
rd /s /q %Temp%
rd /s /q %AppData%\Temp
rd /s /q %HomePath%\AppData\LocalLow\Temp
echo ---------------------Temporary Folders Deleted---------------------

echo[

echo ---------------------Deleting Used Drivers Folders---------------------
rd /s /q %SYSTEMDRIVE%\AMD
rd /s /q %SYSTEMDRIVE%\NVIDIA
rd /s /q %SYSTEMDRIVE%\INTEL
echo ---------------------Used Drivers Folders Deleted---------------------

echo[

echo ---------------------Recreating Empty Temporary Folders---------------------
md %WinDir%\Temp
md %WinDir%\Prefetch
md %Temp%
md %AppData%\Temp
md %HomePath%\AppData\LocalLow\Temp
echo ---------------------Empty Temporary Folders Recreated---------------------

echo[
echo You are all set! If some files are not deleted, Please run again using "Run as Administrator".
echo[

echo Press any key to exit...
pause > NUL
exit