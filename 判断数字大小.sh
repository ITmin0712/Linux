#!/bin/bash 
num=$*
while [ "$num" -gt "10" ]
do 
echo "$num > 10 大于10" 
exit
done
while [ "$num" -eq "10" ]
do
echo "$num = 10 等于10"
exit
done
echo "$num < 10 小于10"
