#!/bin/bash
echo "------------------------------------------Process Jobs---------------------------------------------"
echo "Jobs: Processes that run in background of your current shell are displayed using jobs command."
echo "---------------------------------------------------------------------------------------------------"
echo "&: To start a process in backgroung use & at the end of the command."
echo "jobs -p: TO see process ids of background processes."
echo "---------------------------------------------------------------------------------------------------"
echo "fg: fg command will bring a background job to the foreground."
echo "******************************EXAMPLE*******************************"
 cat << EOF
 user@master:~/procs$ jobs
 [1]-  Running                 sleep 1234 &
 [2]+  Running                 sleep 1234 &

 user@master:~/procs$ fg 2
 sleep 1234
 ^Z
 [2]+  Stopped                 sleep 1234

 Job 2 is STOPPED.
 user@master:~/procs$ jobs
 [1]-  Running                 sleep 1234 &
 [2]+  Stopped                 sleep 1234

 To START again, run bg 2(Will issues SIGCONT signal)
 user@master:~/procs$ bg 2
 [2]+ sleep 1234 &
 user@master:~/procs$ jobs
 [1]-  Running                 sleep 1234 &
 [2]+  Running                 sleep 1234 &
EOF
echo "********************************************************************"
