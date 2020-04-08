#!/bin/bash
array=(1 -1 22 9 13 15 6 6 18 9 10)
echo "Elements of array: ${array[*]}"
#size=${#array[*]}
large=${array[0]}
small=${array[0]}

for i in ${array[*]}
do
  if [[ $large -gt $i ]]
  then
     large=$large
  else
     large=$i
  fi
  if [[ $small < $i ]]
  then
     small=$small
  else
     small=$i
  fi
done
echo "LARGEST DIGIT OF LIST: $large"
echo "SMALLEST DIGIT OF LIST: $small"
ar=${array[*]}
echo "DUPLICATE VALUES: $dup"
echo "`echo ${array[*]}`" | tr ' ' '\n' | sort -n | uniq -d
