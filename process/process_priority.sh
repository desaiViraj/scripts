#!/bin/bash
echo "-----------------------------------------------------------------------------------------"
echo "All processes have a priority and a nice value."
echo "-----------------------------------------------------------------------------------------"
echo "Highest priority processes will get more CPU time."
echo "-----------------------------------------------------------------------------------------"
echo "Processes communicate wit each other via pipes."
echo "This pipes can be created using mkfifo command."
echo "-----------------------------------------------------------------------------------------"
echo "nice: To set the priority to the new command(#nice +5 ./script)"
echo "renice: To set the priority to already running process(#renice +8 4242)"
echo "Normal User: Can set 0 to 20 Nice value on the processes started by them"
echo "Root User: Can specify negative Nice Value on the processes"
cat <<EOF
********************EXAMPLE***********************
user@master:~/procs$ mkfifo p{1..4}              *
                                                 *
user@master:~/procs$ ls                          *
[1] 20859                                        *
user@master:~/procs$ cat <p2 >p1 &               *
[2] 20928                                        *
                                                 *
user@master:~/procs$ ps -C cat                   *
  PID TTY          TIME CMD                      *
20859 pts/1    00:00:18 cat                      *
20928 pts/1    00:00:18 cat                      *
                                                 *
user@master:~/procs$ ps -C cat -o pid,ppid,ni    *
  PID  PPID  NI                                  *
20859 13110   8                                  *
20928 13110  19                                  *
**************************************************

EOF
echo "-----------------------------------------------------------------------------------------"
