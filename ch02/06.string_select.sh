#!/bin/bash
# String Selection
var=$(grep educafe /etc/passwd)
IFS=:
echo $var 

IFS=
echo $var | cut -f1 -d':'
cut -f1 -d':' <<< $var
echo
echo $var | awk -F: '{print $1}'
echo $var | awk -F: '{print $4}'

echo
echo $(getent passwd educafe) | awk -F: '{print $1}'

