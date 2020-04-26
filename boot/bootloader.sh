#!/bin/bash
echo "_______________________________________________________________________________________________"
echo "BOOTLOADER: LILO AND GRUB"
echo "LILO: Linux Loader; Rarely used today."
echo "GRUB: GRand Unified Boot Loader."
cat << INFO
Command to check Bootloader

#sudo dd if=/dev/xvda count=1 bs=16 skip=24 2>/dev/null | od -c
0000000   } 350   .  \0 315 030 353 376   G   R   U   B      \0   G   e
0000020
INFO
