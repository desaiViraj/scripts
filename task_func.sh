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
#	if [ $1 -eq "0" ]
#	then
#		echo "You entered $1"

#	else
		n=$1
		rev=0
		while [ "$n" -gt "0" ]
		do
			#local rev=0
			#local n=$1
	        	a=`expr $n % 10`
			rev=`expr $rev \* 10 + $a`
			#echo $rev
			n=`expr $n / 10`
		#	echo "Reverse of $1 is $rev"
		done
			echo "Reverse of $1 is $rev"
#	fi
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
	
