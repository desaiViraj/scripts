#!/bin/bash

input()
{
	read -p "Enter first number:" num1
	read -p "Enter second number:" num2
}

echo "1. Addition
2. Subraction
3. Multiplication
4. Division
5. Exit"

read -p "Enter your choice[1,2,3,4,5]:" choice

case $choice in
	1)
		input
		bash add.sh $num1 $num2
		;;
	2)
		input
		bash sub.sh $num1 $num2
		;;
	3)
		input
		bash mul.sh $num1 $num2
		;;
	4)
		input
		bash div.sh $num1 $num2
		;;
	5)
		exit
		;;
	*)
		echo "Invalid Input"
esac
