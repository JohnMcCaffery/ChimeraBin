echo Time,FPS > FPS-%1.csv
grep FPS %1.log | sed "s/Z INFO.*: /,/" >> FPS-%1.csv
