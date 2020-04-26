#!/bin/bash
echo "____________________________________________________________________________"
echo "------------------------------MEMORY MANAGEMENT-----------------------------"
cat << mem
To display information about memory run,
#free -m
`free -m`
---------------------------------------------------------------------------------
#top
press shft+m ---> To sort the processes in High Mem consumption.
#cat /proc/meminfo

!!!!!!!!!!!!!!!!!!!!!!!SWAP SPACE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
When OS needs more memory than physically present in RAM.
It can use Swap Space.
Swap space are slower.

Swap Space can be a file, partition or both.
#cat /proc/swaps

To activate/deactivate SWAP Partition.
#swapon
#swapoff

Creating Swap File
#dd of=/dev/zero of=/smallswapfile bs=1024 count=4026
#mkswap /smallswapfile

For Permanent Entry
cat /etc/fstab
/smallswapfile	swap	swap	defaults	0	0

==========================MONITORING MEMORY============================
#vmstat -S -m
#vmstat 2 10
mem
