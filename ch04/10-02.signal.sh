#!/bin/bash

function signal_handler {
	echo "Signal $1 trapped"
	echo $BASHPID
}

# trap "signal_handler SIGINT" SIGINT 
trap "signal_handler SIGRTMIN" SIGRTMIN
# trap "signal_handler TERM" TERM
i=0;
while true
do
	echo "Script is running --- $i"
	i=$[ $i + 1 ]
	sleep 5
done

