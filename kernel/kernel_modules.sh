#!/bin/bash
echo "_______________________________________________________________________________"
echo "--------------------------------KERNEL MODULES------------------------------"
cat << KERNEL
The Linux Kernel is a MONOLITHIC kernel with loadable modules.
Modules for:
Device Drivers, File Systems and Network Protocols.

LOCATION: /lib/modules

module extension: .ko
To find a perticular module,
`find /lib/modules -name ib_core.ko`

1. To list the currently loaded modules
#lsmod
`lsmod | head -4`
or
#cat /proc/modules

2. To load a kernel module manually
#insmod
(Obsolete)
Using insmod will not load mudules dependencies automatically.
You need to install the required dependencies.

3. To get information about modules.
#modinfo <module.ko>

4. To load a kernel module manually(With dependencies)
#modprobe
It will load the required dependencies automatically.

The module dependencies in the below file:
/lib/modules/<kernel>/modules.dep
We can update or recreate the file with the command depmod.
#depmod

5. To remove loaded module
#rmmod
(Obsolete)
It will not remove the dependent modules.

6. To remove loaded module
#modprobe -r
It will remove the dependent modules.

FILES:
/etc/modprobe.conf or /etc/modprobe.d/
Are used to store aliases and options for modprobe.

****COMPILING A KERNEL****
1. Change the extraversion parameter from the Makefile
/usr/src/....
This will identify your kernel

Ex.
uanme -r
4.15.0-1065-aws
This kernel has aws as extraversion name.

2. make mrproper
To crean up the source from previous install.
#make mrproper

3. .config
Copy the .config file from /boot/ to /usr/src/.. directory(Where your kernel source resides).

4. make menuconfig
Allows you to compile a stuff as a module(m).
#make menuconfig

5. make clean
To make a kernel ready for compile.
#make clean

6. make bzImage
This will compile the kernel
#time make bzImage

7. Copy this image to /boot/
#cp <compiles_image> /boot/vmlinuz-<kernel_ver>

8. make module
To compile all modules.
#time make module

9. make modules_install
To copy all compiles modules to /lib/modules, run
#make modules_install
It will create new directory with kernel name.

10. Copy remaining files
#cp System-map- /boot/
#cp .config /boot/
#cp bzImage /boot/vmlinuz-

11. mkinitrd
Create a initrd file which is required at a boot.
#mkinitrd <copied_image> <kernel-ver>
cd /usr/src/...
#mkinitrd /boot/initrd-2.6.18.mykernel 2.6.18.mykernel

12. bootloader
Create a entry for newly compiled kernel in grub.conf.
AKA stanza entry
KERNEL
echo "_______________________________________________________________________________"
