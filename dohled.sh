#!/bin/bash

cas=`date +%T" "%D`

ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`

rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`

tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`

uzivatele=`w | awk -F "," '{print $2}'`
uzivatele=`echo $uzivatele | awk -F " " '{print $1}'`

pamet=`free | grep Mem: | awk -F " " '{print $3}'`

disk=`df -h | grep /dev/sda1 | awk -F " " '{print $2}'`

pouzito=`df -h | grep /dev/sda1 | awk -F " " '{print $3}'`
procenta=``
#velikost disku, použito, použito v %



echo "Počet uživatelů: "$uzivatele
echo "Aktuální čas: "$cas
echo "Moje IP: "$ip
echo "Přijatá data: "$rx
echo "Odeslaná data: "$tx
echo "Obsazenost paměti: "$pamet" bytes"
echo "Velikost disku: "$disk
echo "Využito místa: "$pouzito
