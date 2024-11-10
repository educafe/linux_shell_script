#!/bin/bash
morning="Good morning!"
afternoon="Good afternoon!"
greeting="afternoon"

eval echo "\$$greeting"
eval echo "\${$greeting}"

