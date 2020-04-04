#!/bin/bash
echo "----Welcome to Messenger Box----"
echo "My Terminal: `tty`"
echo "----------Currently loggged In users--------------"
who
echo "--------------------------------------------------"
user=ec2-user
echo "Starting chat with $user on /dev/pts/2......"
while true
do
    read -p "$user:>" msg
    if [ "$msg" != "bye" ]
    then
        echo "$msg" >> /dev/pts/1
    else
        echo "Exiting"
   fi
done
