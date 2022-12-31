#!/bin/bash
# String Selection and split 

var=$(getent passwd educafe)
to=$(awk -F: '{print NF}' <<< "${var}")
for ((i=1; i<=$to; i++))
do
	echo $var| cut -f$i -d':'
done

