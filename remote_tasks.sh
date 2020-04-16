#!/bin/bash
cat << EOF
1. Copy a file/dir to remote linux machine
2. Archive the files available on remote linux machine
3. Fetch the list of users and groups from remote linux machines
4. Start/stop a service on remote linux machine
EOF

copy()
{
	read -p "Enter the file/directory that you want to copy:" $data
	scp $data user@worker:/home/user
	if [ $? -eq "0" ]
	then
		echo "Copied Successfully"
	else
		echo "Copying Failed"
	fi
}

archive()
{
	read -p "Enter the file to be archive:" $file
	tar -cvf file.tar $file
	if [ $? -eq "0" ]
	then
		echo "Archive Successfully"
	else
		echo "Archiving Failed"
	fi
}

fetch()
{
	echo "List of users and groups on remote machines"
	ssh user@worker /bin/bash >> cat /etc/passwd | awk -F ":" '{ print $1 }'
}

case $choice in 
	1)
		copy
		;;
	2)
		archive
		;;
	3)
		fetch
		;;
	4)
		;;
	*)
		;;
esac
