echo Running $1 with $2 config $3 times

cp -r Configs/$2 Configs/tmp

for ((i = 1; i <= $3; i++)); 
do
	echo Repeat: $i
	Scripts/Repeat.sh $1

	rm -r Configs/$2
	cp -r Configs/tmp Configs/$2 
done

rm -r Configs/$2
mv Configs/tmp Configs/$2 

if [ "$4" = "shutdown" ]
then
	shutdown -s -t 10
fi
