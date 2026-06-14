#!/bin/bash
# String Selection
var=$(grep educafe /etc/passwd)
echo $var 
IFS=:
echo $var 

IFS=
var1=$(echo $var | cut -f1 -d':')
echo VAR=$var1

cut -f7 -d':' <<< $(grep educafe /etc/passwd)
echo $var | awk -F: '{print $1}'
echo $var | awk -F: '{print $6}'


