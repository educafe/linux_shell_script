#!/bin/bash

while getopts "x:y:" opt
do
	case $opt in
    x)
			if [ $OPTARG = "educafe" ]; then
				echo "Hello $OPTARG"
			else
				echo "Hello everybody"
			fi
			;;
		y)
			echo "Good $OPTARG"
			;;
		\?)
			echo "Invalid option: -$OPTARG"
			exit 1
			;;
		:)
			echo "Option -$OPTARG requires argument" 
			exit 1
			;;
	esac
done
