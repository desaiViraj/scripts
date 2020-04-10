#!/bin/bash

add_user()
{
	USER=$1
	PASSWORD=$2
	shift; shift;
	COMMENT=$@
	echo "Adding user $USER"
	sudo useradd -c $COMMENT $USER
	sudo passwd $USER $PASSWORD
	echo "Added $USER."
}

echo "------------------------------------------------------"
echo "-------------------USERADD SCRIPT---------------------"
#echo -n "Enter user name:"
#read name
#echo -n "Enter password:"
#read pass
#echo "Enter comment:"
#read comm
add_user demo demouser demo
