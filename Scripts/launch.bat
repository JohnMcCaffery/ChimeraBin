cd ..\..\..\..\AppData\Roaming
rm -rf Firestorm
rem cd ..\Local
rem rm -rf Firestorm
cd ..\..\Documents\John\Chimera\Bin

IF %1==1 GOTO caen

IF %1==2 GOTO brora

IF %1==3 GOTO mosfell

IF %1==4 GOTO exhibit

:caen
timeout 200
Timespan.exe
goto cont

:brora
timeout 200
Brora.exe
goto cont

:mosfell
timeout 200
Mosfell.exe
goto cont

:exhibit
Timespan.exe

:cont


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

Scripts\launch.bat %1

GOTO :EOF
