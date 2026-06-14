#!/bin/bash
#array variable, shell special variable

# Indexed Array variable assignment
myarray=(1 3 5 7 9)		# indexed array assignment

echo ${!myarray[@]}
echo ${myarray[*]}

#associative array : key-value
declare -A url				
url[kosta]="edu.kosta.co.kr"
url[kea]="educ.or.kr"
url[ncia]="edu.ncia.kr"
#echo ${!url[*]}
printf "%-20s %-20s %-20s\n" ${!url[*]}
printf "%-20s %-20s %-20s\n" ${url[*]}

	
	
	
	