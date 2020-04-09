#!/bin/bash
func()
{
	echo "\$1 is $1"
	echo "\$2 is $2"
	a="Goodbye"
}
a=Hello
b=World
func $a $b
echo "a is $a"
echo "b is $b"
