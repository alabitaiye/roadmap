#!/bin/bash

echo "***************************************************************************************************"

echo "################################################################"
echo "THIS SCRIPT IS USED TO CHECK SERVER PERFOMANCE STATS"
echo "################################################################"

echo "***************************************************************************************************"

echo "################################################################"
echo "THIS IS THE TOTAL CPU USEAGE OF THE SERVER"
ps -A -o %cpu | awk '{s+=$1} END {print s"%"}'
echo "################################################################"

echo "***************************************************************************************************"

echo "################################################################"
echo "TOP 5 PROCESSES OF THE CPU"
ps -A -o %cpu,pid,command | sort -nr | head -n 5
echo "################################################################"

echo "***************************************************************************************************"

echo "################################################################"
echo "THIS IS THE TOP 5 PROCESSES BY MEMORY USAGE"
df -h
echo "################################################################"

echo "***************************************************************************************************"

