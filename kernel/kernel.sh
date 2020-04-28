#!/bin/bash
echo "_______________________________________________________________________________"
echo "--------------------------------KERNEL MANAGEMENT------------------------------"
cat << KERNEL
To view your kernel version, run uname -r
`uname -r`

To list the parameters that were passed to the kernel at boot time.
#cat /proc/cmdline
`cat /proc/cmdline`

****KERNEL SOURCE****
ftp.kernel.org

1. /usr/src
Kernel Souce code location directory.
To search linux source code.
#aptitude search linux-search

****KERNEL BOOT FILE****

1. vmlinuz
Location: /boot/
It is the compressed kernel

2. initrd
Location: /boot/
It is the temporarily file system that is mounted on memory until
actual file system is mounted on boot device drive.
It also contains modules and drivers.
It is a compressed cpio file.

3. System.map
It contains the symbol table and changes with every kernel compile.
Locations:
/boot/System.map-
/proc/kallsyms
-----------------------------------------------------
/boot/System.map- ****OUTPUT****
`sudo head /boot/System.map-\`uname -r\``
------------------------------------------------------
/proc/kallsyms****OUTPUT****
`head /proc/kallsyms`

4. .config
Kernel configuration files used for kernel compilation.
Allows you to recompile if needed.
KERNEL
echo "_______________________________________________________________________________"
