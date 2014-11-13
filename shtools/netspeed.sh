#!/bin/bash
IF=eth0
if [ -n "$1" ]; then
IF=$1
fi

while true
do
R1=`cat /sys/class/net/$IF/statistics/rx_bytes`
T1=`cat /sys/class/net/$IF/statistics/tx_bytes`
sleep 1
R2=`cat /sys/class/net/$IF/statistics/rx_bytes`
T2=`cat /sys/class/net/$IF/statistics/tx_bytes`
TBPS=`expr $T2 - $T1`
RBPS=`expr $R2 - $R1`
TKBPS=`expr $TBPS / 1024`
RKBPS=`expr $RBPS / 1024`
echo "TX $IF: $TKBPS kb/s RX $IF: $RKBPS kb/s"
done

