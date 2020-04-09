#/bin/bash
factorial()
{
	if [[ "$1" -gt "1" ]]
	then
		i=`expr $1 - 1`
		j=`factorial $i`
		k=`expr $1 \* $j`
		#j=`factorial $k`
		echo $k
	else
		exit
	fi
}

while :
do
	echo -n "Enter a number: "
	read num
	factorial $num
done
