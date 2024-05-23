#!/bin/bash

trap "echo caught signal SIGINT" SIGINT
trap "echo caught signal SIGQUIT" 3
trap "echo caught signal SIGTERM" 15
trap "echo caught signal EXIT" EXIT

trap -p SIGINT SIGQUIT SIGTERM EXIT

i=0;
while true
do
	echo "Script is running --- $i"
	i=$[ $i + 1 ]
	sleep 5
done


