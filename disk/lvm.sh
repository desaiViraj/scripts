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
Min 3 Physical Volumes.
#pvcreate /dev/sda /dev/sdb /dev/sdc
#vgcreate myvg /dev/sda /dev/sdb /dev/sdc
#lvcreate --size 300m -n mylv -m 1 myvg
options:
-m = mirror
-n = name

SNAPSHOT A LOGICAL VOLUME
A snapshop is a virtual copy of all the data at a point in time on a volume.
#lvcreate -L 100M -n snapLV myvg
#lvs -->To check


VERIFYING EXISTING PHYSICAL VOLUME
To list block devices that can be used with LVM
#lvmdiskscan
#pvs
#pvscan
#pvdisplay
#

VERIFYING EXISTING VOLUME GROUP
#vgs
#vgscan
#vgdisplay

VERIFYING EXISTING LOGICAL VOLUME
#lvs
#lvscan
#lvdisplay

MANAGE
#pvcreate ---> To add devices to LVM
#pvremove ---> To remove physical devices from LVM
#pvresize ---> To make LVM recognize of physical disk size change
#pvchange ---> To prevent Allocation
#pvmove   ---> Move LV from within a VG to another PV

#vgcreate ---> To create Volume Group
#vgextend ---> To extend existing VG
#vgremove ---> To remove VG from lvm
#vgreduce ---> To remove PV from VG
#vgchange ---> To change parameters of VG
#vgmerge  ---> To Merge 2 VGs into one

#lvcreate ---> To create Logical Volume from VG
#lvremove ---> To remove LV from VG
#lvextend ---> To extend size of LV
#lvrename ---> To rename LV
EOF
echo "_______________________________________________________________________________________"
