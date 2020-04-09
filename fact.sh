#/bin/bash
read -p "Enter number:" x
fact=1
while [[ "$x" -gt "1" ]]
do
        fact=`expr $fact \* $x`
	x=`expr $x - 1`
done
echo "Factorial= $fact"
