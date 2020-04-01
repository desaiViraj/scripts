#!/bin/bash
cd $HOME
touch ${UID}_script
path=${UID}_script
echo -e "uname -a \n" >> $path
echo -e "lscpu \n" >> $path
echo -e "df -Th\n" >> $path
echo -e "cat /etc/fstab\n" >> $path
sudo chmod 764 $path
bash $path
