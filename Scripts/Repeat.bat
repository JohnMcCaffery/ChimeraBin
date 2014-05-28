Chimera.exe

echo %errorlevel%

IF ERRORLEVEL 12 GOTO restart 

rem shutdown.exe /s /t 00

GOTO :EOF

:restart

Scripts\Repeat.bat

GOTO :EOF
