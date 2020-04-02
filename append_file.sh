#!/bin/bash
name=$1
age=$2
gender=$3
choice=$4
if [[ $choice == "IamDone" ]]
then
    echo "Program Exited. Thank You"
    exit
fi
echo "Writing data to data.txt file........"
while true
do
  echo "$0:$name:$age:$gender" | tee data.txt
done
