#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage:"
    echo "  ./gen-abuse-reply.bash <template> <IP>"
    echo "    template: ccirc, etc. Abuse template should end in .template"
    echo "    IP: the IP which we are responding for"
    exit 1
fi

TEMPLATE="$1.template"
IP=$2
HOST=`dig -x $IP +short | sed 's/com./com/'`

if [ ! -f $TEMPLATE ]; then 
	echo "$TEMPLATE not found"
else
	# echo $TEMPLATE
	# echo $IP
	# echo $HOST
	source $TEMPLATE
fi

