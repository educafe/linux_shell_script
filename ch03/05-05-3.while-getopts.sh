#!/bin/bash
# Initialize a flag to check if any options are given
no_options=false
USAGE="Usage: $0 -x <arg> -y <arg>"
while getopts ":x:y:" opt
do
	no_option=true								# Set the flag to false if an option is given 
	case $opt in
    x)
      xarg=$OPTARG
			echo "option x arg = $xarg"
			;;
		y)
			yarg=$OPTARG
			echo "option y arg = $yarg"
			;;
		\?)			
			echo "Invalid option: -$OPTARG"
			echo "The suported options are x and y"
			exit 1
			;;
		:)
			echo "Option -$OPTARG requires argument" 
			exit 1
			;;
	esac
done

# Check if no options were given
if [ ! $no_option ]; then
  echo $USAGE
  exit 1
fi

