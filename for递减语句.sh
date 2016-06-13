#!/bin/bash -x
for ((i=10;i>0;i--))
do 
echo -ne " \r		\r"
echo -n "$i "
#echo -ne " \r \r"
sleep 1
done
