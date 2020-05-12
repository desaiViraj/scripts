#!/bin/bash
hosts="/tmp/hosts.txt"
for i in `cat $hosts`
do
	ping -c4 $i
	if [ $? -eq 0 ]
	then
		echo "********************************************************"
		echo "$i is reacheable"
		echo "********************************************************"
	else
		echo "********************************************************"
		echo "$i is NOT reacheable"
		echo "********************************************************"
	fi
done
