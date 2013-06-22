timeout 10

cd C:\Users\OpenVirtualWorlds\Documents\John\Chimera\Bin

git add .
git commit -m "Startup log push - %DATE% %TIME%"
git pull
git push

rem cd C:\Users\OpenVirtualWorlds\Desktop\Opensim-Timespan\
rem start "OpenSim" /MAX OpenSim.exe
rem cd C:\Users\OpenVirtualWorlds\Documents\John\Chimera\

rem timeout 60

Scripts\launch.bat
