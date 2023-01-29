#!/bin/bash

PWFILE="password"
SERVER="machines"
IFS=':'
while read server ip
do
	echo $server : $ip
	sshpass -p passwd ssh root@$ip chpasswd < $PWFILE.$server
	# sshpass -p ubuntu ssh educafe@192.168.56.102 sudo chpasswd < $PWFILE.$servername
done < $SERVER
