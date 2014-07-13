echo Running $1 with $2 config $3 times

echo Copying Configs/$2 to Configs/tmp
cp -r Configs/$2 Configs/tmp

for ((i = 1; i <= $3; i++)); 
do
	echo Repeat: $i of $3
	Scripts/Repeat.sh $1

	echo Replacing Configs/$2 with Configs/tmp/$2
	rm -r Configs/$2
	cp -r Configs/tmp/$2 Configs
done

echo Removing Configs/tmp
rm -r Configs/tmp

if [ "$4" = "shutdown" ]
then
	shutdown -s -t 10
fi
