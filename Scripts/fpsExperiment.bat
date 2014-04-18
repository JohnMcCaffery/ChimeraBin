timeout 10

cd C:\Users\OpenVirtualWorlds\Documents\John\Chimera\Bin

git add .
git commit -m "Startup log push - %DATE% %TIME%"
git pull
git push

rem timeout 60

Chimera.exe

echo %errorlevel%

rem cscript shutdown1.vbs
rem timeout 1
rem cscript shutdown2.vbs

git pull
git add Logs/*
git commit -m "Shutdown log push - %DATE% %TIME% "
git push

shutdown.exe /r /t 00

GOTO :EOF
