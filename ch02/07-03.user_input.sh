#!/bin/bash
# here-string

awk -F: '{print $1}' <<< "hello:world:good:morning"
awk -F: '{print $2}' <<< "hello:world:good:morning"
awk -F: '{print $3}' <<< "hello:world:good:morning"
awk -F: '{print $4}' <<< "hello:world:good:morning"

cut -f1 -d' ' <<< "hello world good morning"
cut -f2 -d' ' <<< "hello world good morning"
cut -f3 -d' ' <<< "hello world good morning"
cut -f4 -d' ' <<< "hello world good morning"

