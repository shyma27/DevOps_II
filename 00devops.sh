#!/usr/bin/bash

#OS name and version
echo 'OS Name and Version:'
echo '===================='
cat /etc/os-release | grep -E '(^NAME|^VERSION=)'

#print users that have ID from 999 till 65534 from file /etc/passwd. $3 and $1 is column number, -F: sets : as delimiter in str
echo ''
echo 'User and Shell:'
echo '==================='
awk -F: '{if ($3 > 999 && $3 < 65534)  {printf "User: %s, Shell: %s\n", $1, $NF}}' /etc/passwd

#get open ports for  tcp an udp
echo ''
echo 'Open Ports:'
echo '==================='
ss -tulpn
