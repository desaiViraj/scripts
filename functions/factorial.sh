#/bin/bash
factorial()
{
	fact=1
	if [[ "$1" -gt "1" ]]
	then
		fact=`expr $fact * $1`
		k=`expr $1 - 1`
		j=`factorial $k`
		echo $j
	else
		exit 1
	fi
}

while [ True ]
do
	echo -n "Enter a number: "
	read num
	factorial $num
done
