Monitor.exe

echo Chimera exited with code %errorlevel%

IF ERRORLEVEL 42 GOTO restart 

echo Shutting down

cscript Scripts\shutdown1.vbs
timeout 1
cscript Scripts\shutdown2.vbs
timeout 20

git pull
git add Logs/*
git commit -m "Shutdown log push - %DATE% %TIME% "
git push

shutdown.exe /s /t 00

GOTO :EOF

:restart

echo Restarting

Scripts\launch.bat

GOTO :EOF
