#!/bin/bash
echo "___________________________________________________________________________________"
echo "-------------------------------LIBRARY MANAGEMENT----------------------------------"
cat << LIB
LOCATION:
/lib
/usr/lib

It contains dynamically linked library(Shared Objects).
These are binaries that contain functions and are not started themselves as programs,
but they are called by other binaries.

EXTENSION: .so

#ldd /bin/su
To display the dependencies.
************************************************************
`ldd /bin/su`
************************************************************

#ltrace <library.so>
The ltrace program allows to see all the calls made to library functions by a program.


To find out which library package uses:
DEBIAN
#dpkg -S <library.so>
************************************************************
`dpkg -S libsudo_util.so`
************************************************************

To reinstall broken library:
#aptitude reinstall <package>

REDHAT
To find library
#rpm -qf <library.so>

To Verify library
#rpm -V <package>

To reinstall package
#yum reinstall <package>
It will override the existing library.

****TRACING****
1. Create a file and add some content into it.
$ vim 11.txt
Hello
:wq

2. Change the permission to 400
$ sudo chmod 400 11.txt
$ ls -l 11.txt
-r-------- 1 desai desai 6 Apr 28 18:35 11.txt

3. Open the file to edit, add strace command to capture tracing of all function calls.
$ strace -o strace.txt vim 11.txt

4. Write data to file and force save it.
$ cat 11.txt
Hello
Hey

5. Note that vim changed the permissions on the file twice.
$ grep chmod strace.txt
chmod("11.txt", 0100600)                = -1 ENOENT (No such file or directory)
fchmod(4, 0100400)                      = 0

6. Trace log count
$ wc -l strace.txt
2037 strace.txt

LIB
echo "___________________________________________________________________________________"

