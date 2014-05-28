for i in {1..$2}
do
	echo Running $1 $2 times
	Scripts/Repeat.sh $1
done

if [ "$3" = "shutdown" ]
then
	shutdown -s -t 10
fi
