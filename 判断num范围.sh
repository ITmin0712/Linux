#!/bin/bash
num1=$1
num2=$2
#let num = $num1 + $num2
((num=$num1+$num2))
while [ "$num" -gt "10" -o "$num" -lt "0" ]
do
echo "$num is not in 10 "
exit 
done
echo "$num is in 10 "
