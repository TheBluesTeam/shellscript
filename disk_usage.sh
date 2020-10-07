#!/bin/bash


echo "=====================Disk usage=============================="
for data in ttt
        do
                str=`df -h | awk {'print $1,$5,$6'} && sed '/dev/d'`
                echo "$str"
        done
