#!/bin/bash
#array variable, shell special variable

#Array variable
myarr=(1 3 5 7 9)			#indexed array
echo ${!myarr[@]}
echo ${myarr[*]}
unset myarr[1]
echo ${myarr[1]} 

declare -A url				#associative array : key-value, similar to python dictionary
url[kosta]="edu.kosta.co.kr"
url[kea]="educ.or.kr"
url[ncia]="edu.ncia.kr"
#echo ${!url[*]}
printf "%-20s %-20s %-20s\n" ${!url[*]}
printf "%-20s %-20s %-20s\n" ${url[*]}
echo
printf "%-20s %s\n" "kosta's url is" "${url[kosta]}."

	
	
	
	