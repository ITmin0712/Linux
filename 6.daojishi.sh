#!/bin/bash
read -p "Hour: " MIN
read -p "Second: " SECOND
while [ "$MIN" -ge "0" ]
do
	echo -n " $MIN : $SECOND "
	echo -en "\r	\r"
	sleep 1
	if [ "$SECOND" -eq "0" ]
	then
		((MIN--))
		SECOND=3
	else
		((SECOND--))
	fi
done
