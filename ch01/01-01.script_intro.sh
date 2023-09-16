#!/bin/bash
# This is comment line

pwd
cd /etc
pwd

echo "BASH PID: $$"
echo "BASH_SUBSHELL: $BASH_SUBSHELL"

echo " \$BASH_SUBSHELL outside subshell       = $BASH_SUBSHELL"           # 0
  ( echo " \$BASH_SUBSHELL inside subshell        = $BASH_SUBSHELL" )     # 1
  ( ( echo " \$BASH_SUBSHELL inside nested subshell = $BASH_SUBSHELL" ) ) # 2



