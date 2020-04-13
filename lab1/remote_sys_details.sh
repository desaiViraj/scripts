#!/bin/bash
ssh desai@worker /bin/bash << EOF
hostname

lscpu | grep -i "Architecture"

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head
EOF
