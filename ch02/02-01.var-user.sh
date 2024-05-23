#!/bin/bash
# ch02/02-1.var_user.sh

var=100
echo "VAR=$var"
var=hello
echo "VAR"=${var}
echo
declare -r var=1000
var=hello

declare -x var1=10000
echo VAR-X=$var1

