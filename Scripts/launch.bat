Chimera.exe

IF ERRORLEVEL 0 GOTO exit 

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
