#!/bin/bash
ip=`ifconfig | grep "inet adr" | awk -F ":" '{print $2}'`
ip=`echo $ip | awk -F " " '{print $1}'`
received=`ifconfig | grep "Přijato" | awk -F "(" '{printf $2}'`
received=`echo $received | awk -F ")" '{print $1}'`
sent=`ifconfig | grep "Přijato" | awk -F "(" '{printf $3}'`
sent=`echo $sent | awk -F ")" '{print $1}'`
echo "Moje IP: "$ip
echo "Přijato: "$received
echo "Odesláno: "$sent
