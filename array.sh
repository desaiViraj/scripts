echo "-------------------------------ARRAY-----------------------------"
echo  "ARRAY is the list of items"
echo "Array in Programming Languages like C,C++,Java etc"
echo "--- Array is the collection of similar items"
#
echo "Array in Scripting Languages(bash, python, perl etc)"
echo "--- Array the collection of list irrespective of their types(i.e. int, strings)"

#!/bin/bash
array=(one two three four 11 22 33 44)
echo "-----------------------------------------------------------"
echo "List of arrays using index value:"
echo "1st=${array[0]}"
echo "2nd=${array[1]}"
echo "3rd=${array[2]}"
echo "4th=${array[3]}"
echo "5th=${array[4]}"
echo "6th=${array[5]}"
echo "7th=${array[6]}"
echo "8th=${array[7]}"
echo "-----------------------------------------------------------"
echo "List all elements of array using # and *"
echo "Using @: ${array[@]}"
echo "Using *: ${array[*]}"
echo "-----------------------------------------------------------"
echo "List the number of elements in array"
echo "Total elements= ${#array[*]}"
echo "-----------------------------------------------------------"
echo "List all values of array using for loop"
for i  in ${!array[@]}
do
      echo "value at index $i is ${array[$i]}"
done
echo "-----------------------------------------------------------"
echo "List index values"
echo "${!array[*]}"
echo "-----------------------------------------------------------"
