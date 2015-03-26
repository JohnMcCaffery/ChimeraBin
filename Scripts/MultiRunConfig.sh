echo Running $1 with $2 config $3 times

echo Copying Configs/$2 to Configs/tmp

echo cp -r Configs/$2 Configs/tmp
#read -s
cp -r Configs/$2 Configs/tmp


for ((i = 1; i <= $3; i++)); 
do
	printf "\nRepeat: $i of $3\n\n"

	Scripts/Repeat.sh $1

	printf "\nReplacing Configs/$2 with Configs/tmp\n"

#	echo rm -r Configs/$2
#	read -s
	rm -r Configs/$2

#	echo cp -r Configs/tmp Configs/$2
#	read -s
	cp -r Configs/tmp Configs/$2

#	Echo Loop
#	read -s
done

printf "\nCompleted $3 sets - finished running tests\n"
echo Removing Configs/tmp
#echo rm -r Configs/tmp
rm -r Configs/tmp

if [ "$4" = "shutdown" ]
then
	shutdown -s -t 10
fi
