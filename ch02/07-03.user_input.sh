#!/bin/bash
# something that looks like array but it is not
read -p "input 5 numbers : " nums <<< "5 6 7 8 9"
set $nums		# it is not array variable
echo $1 $2 $3 $4 $5

# read -p "input numbers : " nums <<< "4:5:6:7:8"
# IFS=:
# set $nums

# echo $1 $2 $3 $4 $5

