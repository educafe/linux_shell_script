#!/bin/bash 

# trap "echo Press any key to continue; read" ERR
trap "read" DEBUG
echo "This is a demo for shell script debugging"
pwd
echo "step ----- 1"
ls -l /bin/usr
echo "step ----- 2"
myadd 30 50
echo "step ----- 3"
var=hello
echo ${var}
echo "step ----- 4"

