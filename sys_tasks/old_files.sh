#!/bin/bash
sudo find /etc/* -mtime +90 -exec ls -l {} \;
#sudo find /etc/* -mtime +90 -exec ls -l {} \; 2>/dev/null
