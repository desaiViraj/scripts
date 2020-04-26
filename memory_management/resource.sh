#!/bin/bash
echo "_________________________________________________________________________________________"
echo "-------------------------------------RESOURCES-------------------------------------------"
cat << resource
Resource to Monitor
1. CPU
2. Network
3. RAM
4. STORAGE

Use top command to monitor ram memory, cpu & swap.
`top -b -n 1 > top_output.txt`
`head top_output.txt`

Use free command to monitor swap and memory
`free`

Other Commands
#vmstat
#iostat
#mpstat
#sar -u
#ntop
#iftop
#iptraf
#nmon
#htop
resource
echo "_________________________________________________________________________________________"
