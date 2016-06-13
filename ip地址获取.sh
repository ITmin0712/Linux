#!/bin/bash
ip=$(ifconfig $1 |grep inet6 -v |awk -F " " '/inet/{print $2}' )
echo $ip

