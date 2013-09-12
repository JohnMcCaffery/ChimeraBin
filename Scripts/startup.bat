timeout 10

run autossh -f -M 4000 -R 0.0.0.0:3022:localhost:22 timespan@fyne.cs.st-andrews.ac.uk


cd C:\Users\openvritualworlds\Documents\John\Chimera\Bin

git add .
git commit -m "Startup log push - %DATE% %TIME%"
git pull
git push

cd C:\Users\openvritualworlds\Desktop\Opensim-Timespan\
start "OpenSim" /MAX OpenSim.exe
cd C:\Users\openvritualworlds\Documents\John\Chimera\Bin\

timeout 60

Scripts\launch.bat
