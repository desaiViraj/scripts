#!/bin/bash
touch file.txt
echo "Hello World" >> file.txt
file=`stat -c%s file.txt`
echo $file

