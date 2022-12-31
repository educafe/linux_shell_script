#!/bin/bash
#shell built-in variable

# Assign a value to System variable
echo "PATH = "$PATH
echo "PWD = "$PWD
echo "Current Process Name =" $( ps -p $$ | awk '{print $4}' | tail +2 )
echo -n "The real shell is : "
realpath /proc/$$/exe
PATH=$PWD:$PATH

