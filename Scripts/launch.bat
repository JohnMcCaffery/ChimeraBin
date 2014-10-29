cd ..\..\..\..\AppData\Roaming
rm -rf Firestorm
rem cd ..\Local
rem rm -rf Firestorm
cd ..\..\Documents\John\Chimera\Bin


timeout 140
Monitor.exe


echo Chimera exited with code %errorlevel%

IF ERRORLEVEL 42 GOTO restart 

echo Shutting down

cscript Scripts\shutdown1.vbs
timeout 1
cscript Scripts\shutdown2.vbs
timeout 20

rem git pull
rem git add Logs/*
rem git commit -m "Shutdown log push - %DATE% %TIME% "
rem git push

shutdown.exe /s /t 00

GOTO :EOF

:restart

echo Restarting

Scripts\launch.bat %1

GOTO :EOF
