for var in {1..5}; do
	echo $var 
done

list="hello world good morning"
for var in hello $list; do
	echo $var
done

# echo
# for var in "$@"
# do	
	# echo $var
# done

# echo
# for var in "$*"
# do	
	# echo $var
# done

