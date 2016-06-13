#!/bin/bash
read -p "please input you want creat user's name:" NAME
read -p "please input a passwd for this user:" -s PASS
TEST=`getent passwd liu`
while [ -z "$TEST" ]
do
useradd $NAME
echo $PASS  | passwd --stdin $NAME &>/dev/null
echo -e "\r"
echo create $NAME
exit 0
done

while [ -n "$TEST" ] 
do 
echo -e "\r"
echo "ERROR:$NAME is exist!"
exit 1
done
