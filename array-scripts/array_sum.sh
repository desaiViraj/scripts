#!/bin/bash
array=(1 2 3 4 5 6 7 8 9 10)
echo "Elements of array: ${array[*]}"
list=${array[*]}
sum=0
for i in $list
do
    sum=`expr $sum + $i`
done
echo "Sum of array elements: $sum"
total=${#array[*]}
avg=`expr $sum / $total`
echo "Average: $avg"
