#!/bin/bash

cas=`date +%T" "%D`

ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`

rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`

tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`

uzivatele=`who | wc -l`

pamet=`free | grep Mem: | awk -F " " '{print $3}'`

disk=`df -h | grep /dev/sda1 | awk -F " " '{print $2}'`

pouzito=`df -h | grep /dev/sda1 | awk -F " " '{print $3}'`

procenta=`df -h | grep /dev/sda1 | awk -F " " '{print $5}'`

echo "Pocet uzivatelu: "$uzivatele"<br>" >> /home/student/skripty/index.html
echo "Aktualni cas: "$cas"<br>" >> /home/student/skripty/index.html
echo "Moje IP: "$ip"<br>" >> /home/student/skripty/index.html
echo "Prijata data: "$rx"<br>" >> /home/student/skripty/index.html
echo "Odeslana data: "$tx"<br>" >> /home/student/skripty/index.html
echo "Obsazenost pameti: "$pamet"B<br>" >> /home/student/skripty/index.html
echo "Velikost disku: "$disk"B<br>" >> /home/student/skripty/index.html
echo "Vyuzito mista: "$pouzito"B<br>" >> /home/student/skripty/index.html
echo "Procentualne: "$procenta"<br>" >> /home/student/skripty/index.html
echo "<hr>" >> /home/student/skripty/index.html
