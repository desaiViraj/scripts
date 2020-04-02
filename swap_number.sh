#!/bin/bash
echo "Program to SWAP two given numbers without using temp variable"
echo "-------------------------------------------------------------"
a=$1
b=$2
echo "a=$a"
echo "b=$b"
echo "SWAPPING.....a-->b & b-->a"
a=`expr $a + $b`
b=`expr $a - $b`
a=`expr $a - $b`
echo ".................
a=$a
b=$b"
echo "SWAPPED.........."
