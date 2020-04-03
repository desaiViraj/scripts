#!/bin/bash
digit=$1
echo "The number you entered is $digit"
n=$digit
unit=`expr $n % 10`
echo "Unit's place of $digit is $unit"
a=`expr $n / 10`
b=`expr $a % 10`
echo "Ten's place of $digit is $b"
c=`expr $a / 10`
echo "Hundred's place of $digit is $c"
echo "--------------------------------------------------"
echo "Finding largest of $c : $b : $unit ......"
if [ $c -ge $b ] && [ $c -ge $unit ]
then
    if [ $c -eq $b ]
    then
	echo "$c and $b are equal and largest digits"
    elif [ $c -eq $unit ]
    then
        echo "$c and $unit are equal and largest digits"
    else
	echo "$c is largest"
    fi
elif [ $b -ge $c ] && [ $b -ge $unit ]
then
    if [ $b -eq $c ]
    then
	echo "$b and $c are equal and largest digits"
    elif [ $b -eq $unit ]
    then
        echo "$b and $unit are equal and largest digits"
    else
	echo "$b is largest"
    fi
else
   echo "$unit is largest"
fi

echo "-----------------------------------------------"
sum=`expr $c + $b + $unit`
echo "SUM($c+$b+$unit) = $sum"
