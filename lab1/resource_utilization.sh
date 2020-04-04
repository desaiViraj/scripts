#!/bin/bash
cpu=`ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head  | awk '{ print $3 }' | sed '1d'`
echo -e "List of top 10 processes with high CPU utilization\n $cpu"

mem=`ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head  | awk '{ print $3 }' | sed '1d'`
echo -e "List of top 10 processes with high RAM utilization\n $mem"

echo -e "Enter process ID to be killed:"
read pid
search=`ps -ef | awk '{ print $2 }'| grep $pid`
if [ "$search" == "$pid" ]
then
  echo "$pid was running and killed now"
fi
#kill -s SIGKILL $search
echo -e "---------------------------------------------------------------------------"
echo -e "Install NTP package"
check=`rpm -qa | grep ntp-4.2`;
if [ $? -eq 0 ]
then
   echo -e "NTP package is installed"
else
   sudo yum install ntp -y
fi
