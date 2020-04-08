#!/bin/bash
array=(10 30 20 15 12 16 18 35 25 28)
echo "Elements of array: ${array[*]}"
size=${#array[*]}
a=0
b=1
#echo "value:${array[$a]}"
#while [ $a -le $size ]
#do
for i in ${array[*]}
do
      b=1
      while [ $b -le $size ]
      do
	  for j in ${array[$b]}
          do
	    if [ $i -gt $j ]
	    then
               large=$i
	       #b=`expr $b + 1`
	    else
               large=$j
	    fi
	 done
	 b=`expr $b + 1`
     done
done
#a=`expr $a + 1`
#done
echo "echo $large"
