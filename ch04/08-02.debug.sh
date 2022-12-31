#!/bin/bash 

echo "This is a demo for shell script debugging"
pwd
echo "step ----- 1"
ls -l /bin/usr
set -x
echo "step ----- 2"
myadd 30 50
set +x
echo "step ----- 3"
var=hello
echo ${var}
echo "step ----- 4"

