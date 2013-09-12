cd ..\..\..\..\AppData\Roaming
rm -rf Firestorm
rem cd ..\Local
rem rm -rf Firestorm
cd ..\..\Documents\John\Chimera\Bin

Timespan.exe

echo %errorlevel%

IF ERRORLEVEL 42 GOTO restart 

cscript shutdown1.vbs
timeout 1
cscript shutdown2.vbs
timeout 60000

git pull
git add Logs/*
git commit -m "Shutdown log push - %DATE% %TIME% "
git push

shutdown.exe /s /t 00

GOTO :EOF

:restart

Scripts\launch.bat

GOTO :EOF
