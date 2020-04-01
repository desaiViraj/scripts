#!/bin/bash
echo -e "List of users in system"
total=`cat /etc/passwd | awk -F : '{ print $1 }' | wc -l`
users=`cat /etc/passwd | awk -F : '{ print $1 }'`
echo -e "Total users: $total"
echo -e "Users:\n$users"
echo -e "--------------------------------------------------------"
echo -e "List of users in system"
gtotal=`cat /etc/group | awk -F : '{ print $1 }' | wc -l`
gname=`cat /etc/group | awk -F : '{ print $1 }'`
echo -e "Total Groups: $gtotal"
echo -e "Groups:\n$gname"
echo -e "--------------------------------------------------------"

echo  "Enter the User Name:"
read username
sudo useradd $username
echo -e "$username added!!!!- Total Users: $total"

echo -e "Enter the username to delete:"
read deluser
sudo userdel $deluser

echo "Enter the Group Name:"
read group
sudo groupadd $group
echo -e "$group added!!!!- Total Groups: $gtotal"

echo "Enter the group name to delete:"
read delgroup
sudo groupdel $delgroup

