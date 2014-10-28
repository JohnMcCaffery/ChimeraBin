timeout 30

run autossh -M 4000 -R 0.0.0.0:3022:localhost:22 timespan@fyne.cs.st-andrews.ac.uk


cd C:\Users\openvritualworlds\Documents\John\Chimera\Bin

git add .
git commit -m "Startup log push - %DATE% %TIME%"
git pull
git push

rem cd C:\Users\openvritualworlds\Desktop\Opensim-Timespan\
rem start "OpenSim" /MAX OpenSim.exe
rem cd C:\Users\openvritualworlds\Documents\John\Chimera\Bin\

Scripts/launch.bat
