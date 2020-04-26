#!/bin/bash
echo "____________________________________________________________________________________________"
echo "*********************************PACKAGE MANAGEMENT*****************************************"
cat << pack
We will see .deb and .rpm packages

Debian, Ubuntu, Mint etc uses .deb format and utility used are:
#dpkg
#apt-get
#apt
(aptitude)

RedHad, CentOS, Fedora uses .rpm format and utility used are:
#rpm
#yum

Package: It is the collection of code, that makes a single package.
Repository: A hub where all packages reside.

yum, aptitude, apt-get will resolve the dependencies.
rpm and dpkg will not resolve dependencies.

DEB
#dpkg -l <package-name>
#dpkg -S <package-name> --> To list files
#dpkg -L <package-name>
#dpkg -i ---> To Install
#dpkg -r ---> To remove

apt-get ---> Keeps a copy of downloaded packages in /var/cache/apt/archives
#apt-get clean ---> Will remove downloaded packages from cache
#apt-get search
#apt-get insall
#apt-get remove
#apt-get purge

#aptitude install
#aptitude remove
#aptitude search
#aptitude purge

config file: /etc/apt/sources.list

RPM
#rpm -qa   ---> Query Package
#rpm -ivh  ---> Install
#rpm -Uhv  ---> Update
#rpm -evh  ---> Remove

rpm database: /var/lib/rpm

rpm2cpio
To convert an rpm to a cpio archive.
To see the list of files in rpm files!!
To CONVERT
#rpm2cpio kernel.src.rpm > kernel.cpio

To READ FILE NAMES
#kernel.src.rpm | cpio -t | head

To EXTRACT
#kernel.src.rpm | cpio -iv Config.mk
Config.mk file is extracted from kernel.src.rpm

#yum install   ---> Install
#yum update    ---> Update
#yum clean all ---> Clean Cache
#yum repolist  ---> List Repositories
#yum search    ---> Search
#yum grouplist ---> To see a list of all available rmp groups

config file: /etc/yum/yum.conf
Repo file:   /etc/yum.repos.d/

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
CONVERTING PACKAGES
*******
*alien*
*******
alien software converts rpm package to deb package.

Ex.
#alien --to-deb netcat-0.8.2-2i386.rpm


COMPILING A SOFTWARE
1. ./configure
2. make
3. makeinstall
pack
echo "____________________________________________________________________________________________"

