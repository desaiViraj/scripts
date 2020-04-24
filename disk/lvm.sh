#!/bin/bash
echo "_______________________________________________________________________________________"
echo "Physical Storage Grouping, Logical Volume Resizing and Data Migration."
echo "WITHOUT LVM"
cat << EOF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
If you want to enlarge the space, then
Unmount the partition,
remove and recreate partitions,
restore the data,
remount the file system.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
EOF
echo "WITH LVM"
cat << EOF
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
LVM will create a Virtual Layer between Mounted FS and Hardware devices.
There is no need to unmount the File System to enlarge the size.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
EOF

echo "LVM TERMINOLOGY"
cat << EOF
1. Physical Volume
Any Block device.
#pv or pvs

2. Volume Group
Abstraction Layer between Block Device and Logical Volume.
#vg or vgs

3. Logical Volume
Created in the Volume Group.
Need to Mounted to access.
#lv or lvs

STEPS to create LVM
1. Need to have device or partition.
2. #pvcreate /dev/sda
3. #vgcreate myvg /dev/sda
4. #lvcreate --size 500m myvg -n mylv
5. #mke2fs -m0 -j /dev/myvg/mylv
(ext3 FS)

EXTEND
NO NEED TO UNMOUNT
File System with vfat or ext2 CANNOT be EXTENDED.

1. #lvextend -L +100 /dev/myvg/mylv
2. #resize2fs /dev/myvg/mylv

RESIZE PHYSICAL VOLUME
1. We have device /dev/sda1 with 100M
2. pcvreate /dev/sda1

Now We extend the size of /dev/sda1
#fdisk /dev/sda1
#delete
#new partition
#size 200M
#save

3. pv or pvdisplay,
You will notice that /dev/sda1 size is still 100M, LVM is still using old size.

4. #pvresize /dev/sda1
pvresize will make lvm aware of the size change of the partition.

MIRROR A LOGICAL VOLUME

EOF
echo "_______________________________________________________________________________________"
