#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <template> <IP>"
    echo "  template: Abuse template which should end in .template"
    echo "  IP: IP which we are generating response for"
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

