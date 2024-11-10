#!/bin/bash
# ch02/02-1.var_user.sh

var=100
echo "VAR=$var"

var=hello
echo "VAR"=${var}

var1=$var
echo VAR1=$var1

declare -r var=1000
var=hello
echo VAR=$var
sh -c echo VAR=$var

declare -x var1=10000
echo VAR1=$var1
sh -c echo VAR1=$var1
