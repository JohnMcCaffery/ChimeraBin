Chimera.exe

IF %errorlevel% 0 GOTO exit 

rem GOTO :EOF

rem :restart

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

rem shutdown.exe /s /t 00

GOTO :EOF
