#!/bin/bash
echo "____________________________________________________________________________"
echo "-----------------------------MOUNTING---------------------------------------"
echo "Mounting a file system makes it available for the use."
echo "To mount use, mount command
Example: mount -t /dev/sda1"
cat << EOF
To unmount File System, use umount command.
#umount <mount-point>

-------------------------UUID----------------------------------
UNIVERSALLY UNIQUE IDENTIFIER
*****************************
Used to Uniquely identify objects(128-bit)
To check UUID,
#tune2fs -l /dev/sda1 | grep UUID
EOF
