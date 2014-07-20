echo Running $1 $2 times

for ((i = 1; i <= $3; i++));
do
	echo Run $i
	Scripts/Repeat.sh $1
done

if [ "$3" = "shutdown" ]
then
	shutdown -s -t 10
fi
