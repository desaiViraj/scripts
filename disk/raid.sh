#!/bin/bash
echo "________________________________________________________________________________________________________"
echo "*****************RAID******************"
echo "REDUNDANT ARRAY OF INDEPENDENT DISKS"
echo "Hardware Raid or Software Raid"
echo "HARDWARE RAID: More Expensive, Better Performance."
echo "SOFTWARE RAID: Cheaper, High Resource Utilization(CPU, Memory)"
echo "**************RAID LEVELS**************"
echo "raid 0: Striping, 2 or more disks, Data is divided in chunks, Without redundancy."
echo "raid 1: Mirroring, 2 or more disks, Data is written only to one disk and other disk is mirrored."
echo "jbod: Concatenating, Data is written to one disk, until it is full. No Redundancy"
echo "raid 5: Parity, 3 or more disks, Full data recovery."
echo "raid 0+1: Stripes of Mirror."
echo "raid 1+0: Mirrors of Stripes."
echo "FS: fd - Linux RAID autodetect."
cat << EOF
********************************************
Create RAID 5.
3 Disks
#Create raid tabel in /etc/raidtab, using mdadm command.
#mdadm --create /dev/md0 --chunck=64 --level=5 --raid-devices=3 /dev/sda1 /dev/sda2 /dev/sda3
#mdadm --detail /dev/md0
Remove Software Raid
#mdadm --stop /dev/md0
ADDING/REPLLACING FAULTY DRIVE with NEW PARTITION
#mdadm /dev/md0 --add /dev/sda3 --fail /dev/sda1 --remove /dev/sda1
EOF
echo "________________________________________________________________________________________________________"

