#!/bin/bash
echo "____________________________________________________________________________________________"
echo "******************************************BOOT PROCESS**************************************"
cat << EOF
_______________________________________________________________________________________
1. BIOS
  i. POST
	Computer first starts POST(PowerOnSelfTest)
	If all goes well, then this leads to BIOS.
BIOS - Identify and Initialize hardware.
BIOS will detect boot device.
BOOT PASSWORD: To protect bios, if forgot you need to open up the hardware to reset it.
BOOT DEVICE: Bios will look for a boot device to boot OS.

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
2. MBR: MASTER BOOT RECORD
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

There are many bootloaders available: LILO, GRUB, GRUB2 etc.

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
3. GRUB
GrandUnified Boot Loader.
GRUB is the flash screen that appears and waits for user input to select the kernel or
after timeout selects default kernel.
GRUB will execute and initialize the KERNEL.
Configuration File: /boot/grub/grub/cfg

MENU COMMANDS
default=0  ---> Default Entry.
fallback=1 ---> If default does not work, use fallback instead.
timeout=5  ---> Will wait until booting default entry.
hiddenmenu ---> Will hide the grub menu unless the user presses Esc brfore timeout.
tile       ---> With title we can start new entry.
password   ---> Protect boot environment.

STANZA COMMANDS
boot       ---> Only required when booting through Grub Command Line.
kernel	   ---> Points  to the location of the Kernel.(boot/vmlinuz-2....)
initrd     ---> Initail Ramdisk, A temporarily mounted FS until genuine FS is mounted
                by Kernel.
root       ---> Root device as a parameter(hd0 - First HD, hd1 - Second HD,)
		Ex root(hd0,0) - First Partition on First HD.
		   root(hd0,1) - Second Partition on First HD.
savedefault ---> To save the stanza as default for the next boot.

CHAINLOADING
With GRUB there are 2 options:
1. Load OS
2. Chainload another Bootloader

Chainloading feature of grub loads the bootsector of a partition.
makeactive - To set first primary partition active with grub.
To CHAINLOAD, add entry in grub.congf.
#chainload +1

EDITING GRUB AT BOOT TIME
Type e to edit.
Enable: To add parameters.

INSTALLING GRUB
#grub-install command to install grub.
#grub-install /dev/sda

GRUB2:
/etc/default/grub

Whenever grub.conf file is updaated, we need to run update-grub command.

LILO
Linux BootLoader, is now replaced with GRUB.

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
4. KERNEL
Bootloader will execute and load Kernel.
Bootloader eg. GRUB will copy a kernel from hard disk to memory.
All the control of the computer is with the kernel now.
Kernel will start the /sbin/init.

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
5. init and runlevels
init starts daemons by using scripts.
Each script starts one daemon.
The serial process of starting daemon is slow.
This leads to SLOW BOOTING.

Parallel Start of Scripts: uptime, systemd.

init or systemd will have PID 1.(First Process that starts)
Configuration: /etc/inittab
id:3:initdefault:

initdefualt is the default runlevel.
0-Halt
1-Single User Mode
2-Multiuser Mode without Networking
3-Multiuser Mode with Networking
4-Unused
5-X11/ GUI Mode
6-Reboot

init scripts:
/etc/rc.d/rc.sysinit

daemon
A daemon is a process that runs in background.
Parameters:
start|stop|restart|status

chkconfig
To check the status of services
#chkconfig --list

RUNLEVEL
TO check current runlevel, run:
#runleven
#who -r
To change current runlevel edit /etc/inittab file with desired runlevel.

/sbin/shutdown
Options:
-a allow
-t terminate with timeout(t)
-h halts
-r reboot

halt,reboot,shutdown will write to /var/log/wtmp

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

SYSTEMD
systemd will be repalcing init.
Starts the init scripts in parallel.
Runlevels are known as targets.
#systemctl list-units --type=target
/etc/systemd/system

chkconfig and service command are replaced with systemctl.
_________________________________________________________
REMOTE SYSTEMD
It has build-in remote control feature.

#systemctl -H root@192.168.3.2 status sshd
_________________________________________________________

MORE SYSTEMD
#systemd-analyze blame | head   ---> To taken by each service to boot.

#systemd-cat
#systemd-run

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
EOF
