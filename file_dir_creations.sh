#!/bin/bash
echo "Creating 2 files: 1. users.txt 2. uid.txt"
touch users.txt
echo "Chnaging permission of $file1 to rw-rw-rw-"
sudo chmod 0666 users.txt
echo "--------------------------------------------------"
ls -lhtr
echo "--------------------------------------------------"
touch uid.txt
echo "Chnaging permission of $file2 to --x--x--x"
sudo chmod 0111 uid.txt
echo "--------------------------------------------------"
ls -lhtr uid.txt
echo "--------------------------------------------------"
echo "Creating Directory: data"
mkdir -p data
echo "--------------------------------------------------"
ls -ldhtr data
echo "--------------------------------------------------"
echo "Current working directory: `pwd`"
if [ -f $PWD/users.txt ] && [ -f $PWD/uid.txt ] && [ -d $PWD/data ]
then
   echo "users.txt, uid.txt files and data directory exist in $PWD"
else
   echo "Either one of the file or directory does not exist."
   echo "Verify from below list of files and directories."
   ls -l
fi

echo "Copying the users.txt and uid.txt to data directory."
/usr/bin/cp "users.txt" "data"
sudo /usr/bin/cp "uid.txt" "data"
cd data
ls -lhtr
