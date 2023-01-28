#!/bin/bash
unset var
echo "var:- = "${var:-world}
echo "var:+ = "${var:+world}
echo "var:= = "${var:=world}
echo "var:+ = "${var:+world}
echo

fname=${1:?"filename missing."}
lines=${2:-10}
cat $fname | head -$lines

