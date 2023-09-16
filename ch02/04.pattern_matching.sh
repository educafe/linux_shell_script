#!/bin/bash
# pattern matching

var=$(getent passwd educafe)
echo "var="$var
echo
echo ${var%:*}
echo ${var%%:*}
echo
echo ${var#*:}
echo ${var##*:}
echo
var=helloworld
var="${var%?????}"
echo $var
echo
var=helloworld
echo ${var:0:5}
echo ${var:5}

