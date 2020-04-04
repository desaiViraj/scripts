#!/bin/bash
up=`uptime`
HISTFILE=~/.bash_history
set -o history
hs=`history | tail -n 5`
echo -e "Hello $USER, \n \
Your home directory is $HOME \n \
Your current login shell is $SHELL \n \
System uptime: $up \n \
Last 5 commands executed by you are:\n $hs"
