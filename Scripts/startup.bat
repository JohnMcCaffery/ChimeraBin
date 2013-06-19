timeout 20

cd C:\Users\OpenVirtualWorlds\Documents\John\Chimera\Bin

git add .
git commit -m "Startup log push - %DATE% %TIME%"
git push
git pull

rem cd C:\Users\OpenVirtualWorlds\Desktop\Opensim-Timespan\
rem start "OpenSim" /MAX OpenSim.exe
rem cd C:\Users\OpenVirtualWorlds\Documents\John\Chimera\

timeout 60

launch.bat
