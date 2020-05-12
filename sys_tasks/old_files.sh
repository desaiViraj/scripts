#!/bin/bash
sudo find /etc/* -mtime +90 -exec ls -l {} \;
