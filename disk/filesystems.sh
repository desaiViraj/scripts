#!/bin/bash
echo "*************************FILESYSTEMS**************************"
echo "FILESYSTEM: It is a way of organizing files on the partitions."
echo "#cat /proc/filesystems; man fs"
echo "-----------------------COMMON FS------------------------------"
echo "1. ext2: Without Journaling, fsck takes long time.
2. ext3: With Journaling.
3. ext4: 2008, Supports large files(16TB).
4. xfs: High Performance FS.
5. iso9660: ISO image FS.
6. gfs: Linux Cluster FS."
echo "*************************************************************"
echo "Tune the File System"
cat << EOF
To display the parameter of FS, run
*************************************************************
#tune2fs -l or dumpe2fs
To augment the parameter of Reserved Block:
#tune2fs -m10 /dev//sda1
#tune2fs -l or dumpe2fs
*************************************************************
**********************************************************************************************
# /etc/fstab: static file system information.						     *
# errors=remount-ro = If FSCK founds any error, FS will be mounted as RO.                    *
# <file system> <mount point>   <type>  <options>       <dump>  <pass>			     *
proc            /proc           proc    defaults        0       0			     *
devpts          /dev/pts        devpts  rw,noexec,nosuid,gid=5,mode=620 0  0		     *
/dev/sdb none swap sw 0 0								     *
UUID="*****************" / ext4 noatime,nodiratime,errors=remount-ro 0 1  *
**********************************************************************************************

DO NOT RUN FSCK ON MOUNTED FILE SYSTEM, IT MAY DAMAGE THE FS.
UNMOUNT AND THEN RUN FSCK OR E2FSCK TO CHECK FS CONSISTENCY.

EOF
