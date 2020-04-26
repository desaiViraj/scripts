#!/bin/bash
echo "_________________________________________________________________________________"
echo "To check all users login details run, lastlog command."
lastlog | head -n 4
echo "To check failed login attempts run, lastb command"
lastb | head -n 4
echo "Logs are stored in /var/log/btmp file."
echo "*********************************************************************************"
echo "-----------------------------------SYSLOGD---------------------------------------"
echo "Developed by Eric Allman."
echo "UDP Port: 514"
echo "Config File: /etc/syslog.conf"
cat << DEMO
New Method: rsyslog
reliable and extended syslog
config file: /etc/rsyslogd.conf
It contains Facility and Priority.
Facilities		Priorities
auth			debug
cron			info
daemon			notice
ftp			warn
kern			err
syslog			crit
user			alert
lpr			emerg
mail
news
uucp

ACTIONS in rsyslogd.conf
/ ---> Will send messages to file
-/ ---> Same, but file will not sync
@ ---> Will send messages to another syslog server

SERVICE NAME
Name: rsyslog

******************************************************************************
LOGGER
logger command is used to generage syslog test messages.
#logger -p emerg "test logs"
-p priority

To see the dynamic logs use, tail -f command.
DEMO
echo "_________________________________________________________________________________"

