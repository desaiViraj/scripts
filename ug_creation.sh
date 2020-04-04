#!/bin/bash
echo -n "Enter username:";
read  uname;
echo "Checking if $uname & $gname exists..."
check_uname=`cat /etc/passwd | awk -F ":" '{ print $1 }' | grep ^$uname$`;
if [ $? -eq "0" ]
then
    echo "$uname alerady exist on the system"
else
    echo "Adding $uname.."
    sudo useradd $uname;
    echo "$uname" | sudo passwd --stdin $uname;
    echo "$uname added successfully."
fi
echo -n "Enter groupname:";
read gname;
check_gname=`cat /etc/group | awk -F ":" '{ print $1 }' | grep ^$gname$`;
if [ $? -eq "0" ]
then
   echo "$gname already exist on the system"
   exit
else
   echo "Adding $gname.."
   sudo groupadd $gname
   echo "$gname successfully added."
fi
echo -e "Added $uname to $gname group"
sudo usermod -aG $gname $uname
