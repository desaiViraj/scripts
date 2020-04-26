#!/bin/bash
echo "_____________________________________________________________________________________"
echo "Scheduling using at"
cat << DATA
To schedule a job one-time use at.

$ at 10:28
at> date
at> cd /tmp/
at> touch file1
at> echo "Created"
at> <EOT>
job 1 at Sun Apr 26 10:28:00 2020

user@master:~$ atq
1       Sun Apr 26 10:28:00 2020 a user

atrm ---> To remove scheduled jobs.

/etc/at.allow  ---> Allow listed user(s)
/etc/at.deny   ---> Deny listed user(s)
DATA
