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

The module dependencies are stored under:
/lib/modules/<kernel>/modules.dep




KERNEL
echo "_______________________________________________________________________________"
