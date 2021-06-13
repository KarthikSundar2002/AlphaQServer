#!/bin/bash

for value in {1..30}
do
    if [ $value -lt 10 ]
    then
        touch /home/sysAd_0$value/schedule.txt
        touch /home/webDev_0$value/schedule.txt
        touch /home/appDev_0$value/schedule.txt
        while read p; do
            date = "${ date+'%Y-%m-%d'}"
            awk "${date}/ {print}" future.txt > /home/sysAd_0$value/schedule.txt
            awk "${date}/ {print}" future.txt > /home/webDev_0$value/schedule.txt
            awk "${date}/ {print}" future.txt > /home/appDev_0$value/schedule.txt
    else
        touch /home/sysAd_$value/schedule.txt
        touch /home/webDev_$value/schedule.txt
        touch /home/appDev_$value/schedule.txt
        while read p; do
            date = "${ date+'%Y-%m-%d'}"
            awk "${date}/ {print}" future.txt > /home/sysAd_$value/schedule.txt
            awk "${date}/ {print}" future.txt > /home/webDev_$value/schedule.txt
            awk "${date}/ {print}" future.txt > /home/appDev_$value/schedule.txt

    fi

done