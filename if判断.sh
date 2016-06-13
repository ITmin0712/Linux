#!/bin/bash
if
[ "$*" = "westos" -o  "$*" = "WESTOS" ]
then
	echo "linux"
	elif
	[ "$*" = "linux" -o "$*" = "LINUX" ]
	then
	echo "westos"
else
echo "please input linux or westos"	
fi
