#!/bin/bash
echo "___________________________________________________________________________"
echo "Last login users details are stored under /var/log/wtmp"
ls -l /var/log/wtmp
echo "To see last login user details, run last command:"
last
echo "___________________________________________________________________________"
