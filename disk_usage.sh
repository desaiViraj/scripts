#!/bin/bash
usage=`df -Th / | awk '{ print $6 }' | tail -1 | sed 's/.$//'`
if [ $usage -gt 90 ]
then
	echo -e "CRITICAL: Root partition is above 90%: [Usage=$usage]"
elif [ $usage -gt 70 ] && [ $usage -lt 90 ]
then
	echo -e "WARNING: usage:$usage"
else
	echo -e "OK: usage=$usage"
fi
