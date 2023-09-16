#!/bin/bash
function hello {
	echo "hello world"
	now
}

function now {
	echo "It is $(date +%r)"
}

hello

