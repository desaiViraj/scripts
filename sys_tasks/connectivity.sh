#!/bin/bash
#Description: Check connectivity of server
ping 8.8.8.1 -c 4
if [ $? -eq 0 ]
then
	echo "Server is UP"
else
	echo "Server not reachable"
fi
