#!/bin/sh
echo "----------------------------------------------"
echo -n "Enter number:"
read num
rem=`expr $num % 2`
div=`expr $num % 3`
if [ $rem -eq "0" ]
then
   echo "$num is an even number."
   if [ $div -eq "0" ]
   then
      echo "$num is a multiple of 6"
   fi
   if [ $num -gt "100" ]
   then
      echo "$num is greater than 100"
      unit=`expr $num % 10`
      echo "Unit place of $num is $unit"
      tens=`expr $num % 100`
      echo "Tens place of $num is $tens"
   else
      echo "$num is less than 100"
   fi
else
   if [ $num -lt "50" ]
   then
       echo "$num is an odd number and less than 50."
   elif [ $num -ge "50" ] && [ $num -lt "100" ]
   then
       echo "$number is odd number and greater that or equal to 50 but less than 100"
   else   
      echo "$num is odd number and greater than 100"
      unit=`expr $num % 10`
      echo "Unit place of $num is $unit"
      tens=`expr $num % 100`
      echo "Tens place of $num is $tens"
   fi
fi
