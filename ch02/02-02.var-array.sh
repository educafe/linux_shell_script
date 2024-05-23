#!/bin/bash
#array variable, shell special variable

# Indexed Array variable
# myarray[0]=1
# myarray[1]=3
# myarray[2]=5
# myarray[3]=9
# myarray[4]=9

myarray=(1 3 5 7 9)

echo ${!myarray[@]}
echo ${myarray[*]}

#associative array : key-value, similar to python dictionary
declare -A url				
url[kosta]="edu.kosta.co.kr"
url[kea]="educ.or.kr"
url[ncia]="edu.ncia.kr"
#echo ${!url[*]}
printf "%-20s %-20s %-20s\n" ${!url[*]}
printf "%-20s %-20s %-20s\n" ${url[*]}

	
	
	
	