#!/bin/bash
echo "----Welcome to Messenger Box----"
echo "My Terminal: `tty`"
echo "----------Currently loggged In users--------------"
who
echo "--------------------------------------------------"
user=ubuntu
echo "$user"
echo "Starting chat with $user on /dev/pts/2......"
while true
do
    echo -n "$user@`tty`:>"
    read msg
    if [ "$msg" != "bye" ]
    then
	echo "$msg" >> /dev/pts/3
    else
	echo "Chat box Exited."
	exit
   fi
done



#write $user /dev/pts/2
while true
do
   read input
   case $input in
   bye)
      echo "Thank you chatting... Bye."
      exit
      ;;
   *)
      write $user /dev/pts/2 >> output.log
      echo "$output.log"
      if [[ "$output.log" == "bye" ]]
      then
	  exit
      fi
      ;;
   esac
done
