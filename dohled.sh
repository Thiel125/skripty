#!/bin/bash

cas=`date +%T" "%D`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`

počet nalogovaných uživatelů
velikost disku, použito, použito v %
obsazenost paměti

echo "Aktuální čas: "$cas
echo "Moje IP: "$ip
echo "Přijatá data: "$rx
echo "Odeslaná data: "$tx
