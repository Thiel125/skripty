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

procenta=`df -h | grep /dev/sda1 | awk -F " " '{print $5}'`

echo "Počet uživatelů: "$uzivatele >> /home/student/skripty/index.html
echo "Aktuální čas: "$cas >> /home/student/skripty/index.html
echo "Moje IP: "$ip >> /home/student/skripty/index.html
echo "Přijatá data: "$rx >> /home/student/skripty/index.html
echo "Odeslaná data: "$tx >> /home/student/skripty/index.html
echo "Obsazenost paměti: "$pamet" bytes" >> /home/student/skripty/index.html
echo "Velikost disku: "$disk >> /home/student/skripty/index.html
echo "Využito místa: "$pouzito >> /home/student/skripty/index.html
echo "Procentuálně: "$procenta >> /home/student/skripty/index.html
echo "<br><br>" >> /home/student/skripty/index.html
