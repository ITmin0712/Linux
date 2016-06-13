#!/bin/bash
ping -w1 -c1 $* &>/dev/null 
while [ "$?" = "0" ]
do 
echo "ping is up"
exit
done
echo $* is down
