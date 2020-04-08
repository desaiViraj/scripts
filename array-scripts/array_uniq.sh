#!/bin/bash
array=(one two 1 2 3 two 1 four one)
echo "Array Elements: ${array[*]}"
echo "Uniq Elements:"
echo "`echo ${array[*]}`" | tr ' ' '\n' | sort -n | uniq | tr '\n' ' '
echo -e "\n"
var=()
n=0
length=`echo ${array[*]} | tr ' ' '\n' | sort -n | uniq | tr '\n' ' ' | wc -w`
echo "Number of words in uniq array: $length"
#while [[ $n -le $length ]]
#do
  for i in `echo ${array[*]} | tr ' ' '\n' | sort -n | uniq | tr '\n' ' '`
  do
     if [[ $n -le $length ]]
     then
	     var[$n]=$i
     fi
     n=`expr $n + 1`
  done
#done
echo "Copying the uniq element to new array..."
echo -e "\n"
echo "Uniq array: ${var[*]}"
echo -e "\n"
echo "Displaying elements of uniq array using for loop:"
n=0
for i in "${var[*]}"
do
  while [[ $n -lt $length ]]
  do
      echo -e "$!{var[$n]}: ${var[$n]}"   
      size=`echo -n ${var[$n]} | wc -c`
      echo -e "Size of ${var[$n]}: $size\n"
      n=`expr $n + 1`
  done
done

