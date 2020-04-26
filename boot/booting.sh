#!/bin/bash
echo "____________________________________________________________________________________________"
echo "******************************************BOOT PROCESS**************************************"
cat << EOF
______________________________________________________
1. BIOS
  i. POST
	Computer first starts POST(PowerOnSelfTest)
	If all goes well, then this leads to BIOS.
BIOS - Identify and Initialize hardware.
BIOS will detect boot device.
BOOT PASSWORD: To protect bios, if forgot you need to open up the hardware to reset it.
BOOT DEVICE: Bios will look for a boot device to boot OS.

MBR: MASTER BOOT RECORD
First Sector of Hard Disk.
It will have details of Partitions.
MBR is 512 Bytes.
46 Bytes - Bootloader
426 Bytes - Partition Table
12 Bytes - Magic Number(Will check errors in PT)
We can copy MBR using dd command
#dd if=/dev/sda of=bootsect.mbr count=1 bs=512


MBR contains Bootloader, which is executed by BIOS.
To check bootloader info(GRUB)
#sudo dd if=/dev/xvda count=1 bs=16 skip=24 2>/dev/null|od -c
0000000   } 350   .  \0 315 030 353 376   G   R   U   B      \0   G   e
0000020


EOF
