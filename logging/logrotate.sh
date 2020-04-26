#!/bin/bash
echo "______________________________________________________________________________________"
echo "*******************************LOG ROTATE*******************************"
cat << LOG
A lot of log files are always growing in size.
To manage thiese logs we need to use lorotage to compress,rotate, remove and mail logs.
config file: /etc/logrotate.conf
Individual conf files under: /etc/logrotate.d/

LOG
echo "______________________________________________________________________________________"
