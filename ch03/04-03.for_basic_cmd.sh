#!/bin/bash

file=/home/educafe/linux_shell_script/ch03/servers.txt
for server in $(cat $file)
do
	ping -c 2 -i 2 $server
done
