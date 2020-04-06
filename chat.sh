#!/bin/bash
user=ec2_user
x=`ps -ef | grep pts/1 | head -1`
write $user /dev/pts/1
 
