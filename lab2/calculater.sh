#!/bin/bash
echo -n "Enter 1st number:"
read firstNum
echo -n "Enter 2nd number:"
read secondNum
while true
do
echo "Enter your choice
1. Addition
2. Subraction
3. Multiplication
4. Division
"
echo -n "Enter your choice: [1,2,3,4]:"
read choice
if [ $choice -eq 1 ]
then
   echo "Addition-> $firstNum and $secondNum"
   sum=`expr $firstNum + $secondNum`
   echo "SUM=$sum"
elif [ $choice -eq 2 ]
then
   echo "Subraction-> $firstNum and $secondNum"
   diff=`expr $firstNum - $secondNum`
   echo "Difference=$diff"
elif [ $choice -eq 3 ]
then
   echo "Multiplication-> $firstNum and $secondNum"
   multi=`expr $firstNum \* $secondNum`
   echo "Multiplication=$multi"
elif [ $choice -eq 4 ]
then
   echo "Division-> $firstNum and $secondNum"
   div=`expr $firstNum / $secondNum`
   echo "Division=$div"
else
   echo "Invaid Input, you need to provide correponding number from one of the below choices:
    1. Addition
    2. Subraction
    3. Multiplication
    4. Division"
fi
echo -n "Do you want to continue(Y/N):"
read ans
if [[ $ans == "N" ||  $ans ==  "n" ]]
then
  break
else
  echo "--------------Next Choice--------------------"
fi
done
