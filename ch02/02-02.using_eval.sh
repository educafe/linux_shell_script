# !/bin/sh
morning="Good morning!"
afternoon="Good afternoon!"
greeting="afternoon"

eval echo "\$$greeting"
eval echo "\${$greeting}"

# user_input='HOME/linux_shell_script/ch01; rm -rf /$HOME/linux_shell_script/ch01'
# eval echo \$$user_input

