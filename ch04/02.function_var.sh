#!/bin/bash

function function1 {
    echo "VAR1=$var1"
}
var1=1
function1

function function2 {
    var2=1
}
echo "Before function call: VAR2=$var2"
function2
echo "After function call: VAR2=$var2"

