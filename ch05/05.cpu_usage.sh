#!/bin/bash
#Cpu usage monitoring
echo "Please wait ....."

top -b -n5 | fgrep "Cpu(s)" | awk -F',' '{ print $1 $2 $3 $4 }' 

# top -b -n5 > serverstatus
# cat serverstatus | fgrep "Cpu(s)" | awk -F',' '{ print $1 $2 $3 $4 }' 
# cat serverstatus | fgrep "KiB Mem " | awk -F',' '{ print $1 $2 $3 $4 }' 

# sar -u 2 5				cpu statistics
# sar -r 2 5				memory usage
# sar -b 2 5				i/o operations
# sar -n DEV  2 5		Network statistics
# sar -q 2 5				System load averagey


