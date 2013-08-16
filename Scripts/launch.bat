cd ..\..\..\..\AppData\Roaming
rm -rf Firestorm
cd ..\Local
rm -rf Firestorm
cd ..\..\Documents\John\Chimera\Bin

Timespan.exe

echo %errorlevel%

IF ERRORLEVEL 42 GOTO restart 

rem cscript shutdown1.vbs
rem timeout 1
rem cscript shutdown2.vbs

git pull
git add Logs/*
git commit -m "Shutdown log push - %DATE% %TIME% "
git push

shutdown.exe /s /t 00

GOTO :EOF

:restart

Scripts\launch.bat

GOTO :EOF
