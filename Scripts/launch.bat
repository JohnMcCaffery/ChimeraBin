Monitor.exe

echo Chimera exited with code %errorlevel%

IF ERRORLEVEL 42 GOTO restart 

echo Shutting down

REM cscript Scripts\shutdown1.vbs
REM timeout 1
REM cscript Scripts\shutdown2.vbs
timeout 20

REM git pull
REM git add Logs/*
REM git commit -m "Shutdown log push - %DATE% %TIME% "
REM git push

shutdown.exe /s /t 00

GOTO :EOF

:restart

echo Restarting

Scripts\launch.bat

GOTO :EOF
