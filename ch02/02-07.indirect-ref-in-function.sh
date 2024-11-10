#!/bin/bash
morning="Good morning!"
afternoon="Good afternoon!"
my_greeting() {
    var_name=$1
    echo "${!var_name}"
}

my_greeting afternoon 

