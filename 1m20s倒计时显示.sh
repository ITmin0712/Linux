#!/bin/bash
for((i=1;i>=0;i--))
do
	while["$i" = 1]
	do 
	j=20
		for((j;j>0;j--)) 
		do
		echo -ne "\r"
		echo -n "after ${i}m:${j}s is over"
		sleep 1
		done
	done
	while["$i" = 0]
	do
	j=60
		for((j;j>0;j--))
		do
		echo -ne "\r"
		echo -n "after ${i}m:${j}s is over"
		sleep 1		
		done
	done
done
