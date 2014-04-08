timeout 10

run autossh -M 5000 -R 0.0.0.0:4022:localhost:22 timespan@fyne.cs.st-andrews.ac.uk


cd C:\Users\openvirtualworlds\VirtualWorld\ChimeraBin\

git add .
git commit -m "Startup log push - %DATE% %TIME%"
git pull
git push

timeout 180

Scripts\launch.bat
