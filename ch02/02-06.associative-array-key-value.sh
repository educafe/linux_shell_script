#!/bin/bash
declare -A vars
vars[greeting]="Good morning!"

ref="greeting"
echo "${vars[$ref]}" 


