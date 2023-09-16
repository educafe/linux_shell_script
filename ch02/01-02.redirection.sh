#!/bin/bash
#stand output redirection

exec > log
exec 2> err
grep educafe /etc/passwd
echo
ls -l ~/lab
ls -l /bin/usr
echo

exec > /dev/tty
exec 2> /dev/tty

file="file01.txt"
echo $(cat $file)

read line
echo $line


