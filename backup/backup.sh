#!bin/bash
echo "________________________________________________________________________________________"
echo "**************************************BACKUP********************************************"
cat << BACK
****NOTE****
Kernel will use major and minor number and not the device name to find the hardware.

SCSI Tapes: Major 9 char
IDE Tapes: Major 37 char

COMPRESSION
Compress files before backup.
1. gzip/gunzip ---> Faster but compresses less comapred to bzip.
2. bzip2/bunzip2 ---> Slower but compresses a lot better than gzip.

****TAR****
Tape Archive
#tar -cvf /backup/etc.tar /etc

gzip and tar
#tar -cvfj /backup/etc.tar.gz /etc
bzip and tar
#tar -cvfj /backup/etc.tar.bz2 /etc

-t ---> to list the files in the tar.
-p ---> preserve permission

To create a text file with names of files and directories to archive.
#find /etc -name *.conf > file_to_archive.txt
#tar -cpzf /backup/backup.tgz -T file_to_archive.txt

BACKUP TYPES
Multilevel Incremental
Full Backup

To exclude the file being dump archive use chattr command
#chattr +d /etc/hosts
The above file will be excluded from being backup.

****CPIO****
Copy Input Output

#find /etc -depth -print | cpio -oaV archive.cpio

****dd****
Used to take backup and is very effective.
dd backups can only be restored to very similar partitions or devices.
Uses of dd

1. Create a CDROM Image
Create a .iso file from CD.
if= Input File
of=Output File
#dd if=/dev/cdrom of=/path/to/cdrom.ISO

2. Create a Floppy Image
#dd if=/dev/cdrom of=//path/to/cdrom.img bs=1024 count=1440

3. Copy MBR
#dd if=/dev/hda of=/MBR.img bs=512 count=1

4. Copy files
#dd if=~/summer.txt of=~/copy_of_summer.txt

5. Create compressed image of partiton
#dd if=/dev/hda1 of=/image_of_hda1.img

6. Create a file with a certain size
#dd if=/dev/zero of=file1MB count=1024 bs=1024

****SPLIT A FILE****
Used to split files into smaller files.

#split -b 2000 bigfile1 splitfile.

BACK
echo "________________________________________________________________________________________"
