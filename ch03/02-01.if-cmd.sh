#!/bin/bash
var=$(grep educafe /etc/passwd)
if [ $? -eq 0 ]; then
	echo $var
else
	echo "Error"
fi

if grep educafe /etc/passwd > /dev/null; then
	echo "True"
else
	echo "False"
fi


