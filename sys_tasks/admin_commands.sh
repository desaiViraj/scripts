#!/bin/bash
#Description: Format the output of admin commands
date | awk '{ print $1 }' 

uptime | awk '{ print $1 }'

df -h | grep /dev/xvda
