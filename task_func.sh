#!/bin/bash
factorial()
{
	if [ $1 -eq "1" ]
	then
		echo "1"
	else
		local tmp=`expr $1 - 1`
		local res=$(factorial $tmp)
		echo $(($res * $1))
	fi
}

reverse()
{
	if [ $1 -eq "0" ]
	then
		echo "You entered $1"

	else
		a=123
	        a=`expr $1 % 10`
		echo $a
		b=`expr $a / 10`
		c=`expr $a + $b`
		echo $c
	fi

}

sum_reverse()
{
	echo "sum"

}

cat << EOF
1. Factorial of number
2. Reverse of a number
3. Exit
EOF
read -p "Enter your choice:" ch
case $ch in
	1)
	   echo "------------Factorial------------"
	   read -p "Enter a number:" num
	   echo "---------------------------------"
	   factorial $num	
	   echo "---------------------------------"
		;;
	2) 
	   echo "------------Reverse--------------"
	   read -p "Enter a number:" rev
	   echo "---------------------------------"
	   reverse $rev
	   echo "---------------------------------"
		;;
	3) exit
		;;
	*) echo "Invalid Input"
		;;
esac
	
