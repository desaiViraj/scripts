#!/bin/bash
array=(a banana cat d e cat f goat h ice j)
echo "-----------------ARRAY-----------------"
echo "${array[*]}"
echo "---------------------------------------"
echo -n "Enter the string to be searched: "
read search
n=0
size=`echo "${#array[*]}"`
while [[ $n -lt $size ]]
do
	if [[ "${array[$n]}" == "$search" ]]
	then
	    echo "$search is present at index: $n"
	fi
	n=`expr $n + 1`
done
