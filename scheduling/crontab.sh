#!/bin/bash
echo "___________________________________________________________________________"
echo "CRONTAB"
echo "To schedule a recurring jobs use crontab."
echo "Each user has a crontab file."
cat << DATA
Crontab File Format
minute hour day_of_the_month month day_of_the_week

Ex.
8 Minutes 14 Hours and every day,month,week
8 14 * * * script.sh

Every 2 Minutes
*/2 * * * * script

Command to write cron entries.
#crontab -e
#crontab -l ---> To list
#crontab -r ---> To remove cron entry

/etc/cron.allow  ---> Allow user(s)
/etc/cron.deny   ---> Deny User(s)

Config:
/etc/crontab  ---> Entries when to run hourly,daily,weekly, monthly tasks.

/etc/cron.*
DATA
