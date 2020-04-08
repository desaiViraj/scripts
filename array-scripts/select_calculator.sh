#!/bin/bash
echo "------------------------------------------------------"
echo "---------------------CALCULATOR-----------------------"
array=(Addition Subraction Multiplication Division Exit)
echo -n "Enter 1st Number: "
read a
echo -n "Enter 2nd Number: "
read b
select choice in ${array[*]}
do
    case $choice in
    Addition)
      c=`expr $a + $b`
      echo "Addition of $a + $b = $c"
      ;;
    Subraction)  
      c=`expr $a - $b`
      echo "Subraction of $a - $b = $c"
      ;;
    Multiplication)
      c=`expr $a \* $b`
      echo "Multiplication of $a * $b = $c"
      ;;
    Division)
      c=`expr $a / $b`
      echo "Division of $a / $b = $c"
      ;;
    Exit) 
      echo "Exited"
      exit
      ;;
    *)
       echo "Invalid Input"
    esac
done
