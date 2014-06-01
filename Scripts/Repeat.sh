$1

ret=$?

function repeat {
	Scripts/Repeat.sh $1 $2
}

if [ $ret -eq 12 ]
then
	echo "$1 exited with repeat code (12) - Relaunching"
	repeat $1 $2
fi


if [ "$2" = "shutdown" ]
then
	shutdown -s -t 10
fi
