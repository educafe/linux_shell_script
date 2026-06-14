#!/bin/bash
add=$(expr $1 + $2)
echo "Add = "$add
echo "Sub = $[$1 - $2]"
echo "Mul = $(($1 * $2))"
echo "Div = $(($1 / $2))"


