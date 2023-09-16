#!/bin/bash
exec 3<&0
exec 4>&1
exec 5>&2
exec 1>&-
exec 0<&-
exec 2>&-


logger "Message"
logger -p local0.info "Message with priority"		# -p priority
logger -s -p local0.info "Hello world"				# -s : output to stderr as well as syslog
logger -t myscript -p local0.info "Good morning" 	# -t : Mark with the specified tag
logger -i -t myscript "How are you"					# -i " log [id of process"

exec 1>&4

echo "I am a few good man"

# tail -f /var/log/syslog


