Chimera.exe

rem IF %errorlevel% EQU -1073741819 (
rem GOTO exit
rem ) ELSE ( 
rem IF %errorlevel% EQU 0 GOTO exit ELSE GOTO restart
rem )

IF %errorlevel% EQU 0 GOTO exit ELSE GOTO restart

GOTO :EOF

:restart
Scripts\launch.bat
GOTO :EOF

:exit

rem cscript shutdown1.vbs
rem timeout 1
rem cscript shutdown2.vbs

git pull
git add Logs/*
git commit -m "Shutdown log push - %DATE% %TIME% "
git push

shutdown.exe /s /t 00

GOTO :EOF
