#!/bin/bash
for((i=46;i<55;i++))
do
	ping -w1 -c1 172.25.254.$i &>/dev/null
	[ "$?" -eq "0" ] && echo "172.25.254.$i is up" || echo "172.25.254.$i is down" 
	
	#while [ "$?" eq "0" ]
	#do 
	#echo "172.25.254.$i is up"
	#exit
	#done

done
