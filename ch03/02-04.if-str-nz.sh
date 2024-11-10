#!/bin/bash
# Performing checks on and between strings

# IFS=$'\0'	
# read -p "Input string : " -n 1 str
read -p "Input string : " -N 1 str
# echo
# if [ -z $str ]; then
	# echo "(z) \$str is NULL"
# else
	# printf "(z) HEX=%x\t DEC=%d\t OCT=%o\n" "'$str'" "'$str'" "'$str'"
# fi

# if [ -n $str ]; then
	# printf "(n) HEX=%x\t DEC=%d\t OCT=%o\n" "'$str'" "'$str'" "'$str'"
# else
	# echo "(n) \$str is NULL."
# fi

# if [[ $str == $'\0' ]]; then
	# echo "True. It is NULL"
# else
	# echo "False. It is not NULL"
# fi

# Test SPACE, TAB and ENTER key by receiving just one character 
# to see if how it reacts 
