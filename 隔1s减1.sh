#!/bin/bash 
for((i=0;i<10;i++))
do
##  -ne :不换行且光标停在行首；
echo -ne "\r"     
echo -n "your name is $i"
sleep 1
done
