#!/bin/bash
today=$(date +%y%m%d)
ls -l /usr/bin > log.$today
# ls /usr/bin -al > log.$(date +%y%m%d)

