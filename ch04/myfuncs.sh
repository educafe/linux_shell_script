#define my functions

myadd() {
	echo $@
	local result=0
	for var in $@
	do
		result=$[$result + $var]
	done
	echo $result
}

mysub() { echo $[ $1 - $2 ]; }

mymul() { 
	echo $@ >&2
	local result=1
	for var in $@
	do
		result=$[$result * $var]
	done
	echo $result 
}

mydiv() {
	if [ $2 -ne 0 ] 
	then echo $[ $1 / $2 ]
	else echo "Invalid $2"
	fi
}
export -f myadd
export -f mysub
export -f mymul
export -f mydiv

