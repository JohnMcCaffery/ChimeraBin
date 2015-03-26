echo Running %1 %2 times

FOR /l %%x in (1, 1, %2) DO Scripts\Repeat.sh %1

IF "%3"=="shutdown" shutdown /s /t 10