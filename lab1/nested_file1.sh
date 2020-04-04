#!/bin/bash
cd $HOME
touch ${UID}_script
path=${UID}_script
echo "System Information:\n"  $path
echo -e "uname -a \n" >> $path
echo -e "CPU Arch Details:\n" >> $path
echo -e "lscpu \n" >> $path
echo -e "All mounted partition:\n" >> $path
echo -e "df -Th\n" >> $path
echo -e "Contents of /etc/fstab:\n" >> $path
echo -e "cat /etc/fstab\n" >> $path
sudo chmod 764 $path
bash $path
