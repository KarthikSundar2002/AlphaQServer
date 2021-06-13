#!/bin/bash
#This file is kinda buggy though
argument1 =${2:-2019-01-01}
argument2 =${3:-2021-01-01}

date1 = ${date -d { $argument1 } }
date2 = ${date -d { $argument2 } }


awk "{$3=substr($3,1,length($3)-1); print $3}" attendance.log | while read date;
do
    for value in {1..30}
    do
        if [ ${date  "+%s" -d ${date} } -gt ${date  "+%s" -d ${date1} } ] && [ ${date  "+%s" -d ${date} } -lt ${date  "+%s" -d ${date2} } ]
        then
            if [ $value -lt 10 ]
            then
                if [ $(grep -c "sysAd_0{$value} - {$date}" attendance.log) == 0]
                then
                    echo sysAd_0{$value} - {$date}
                fi
                if [ $(grep -c "webDev_0{$value} - {$date}" attendance.log) == 0]
                then
                    echo webDev_0{$value} - {$date}
                fi
                if [ $(grep -c "appDev_0{$value} - {$date}" attendance.log) == 0]
                then
                    echo appDev_0{$value} - {$date}
                fi

            else
                if [ $(grep -c "sysAd_{$value} - {$date}" attendance.log) == 0]
                then
                    echo sysAd_{$value} - {$date}
                fi
                if [ $(grep -c "webDev_{$value} - {$date}" attendance.log) == 0]
                then
                    echo webDev_{$value} - {$date}
                fi
                if [ $(grep -c "appDev_{$value} - {$date}" attendance.log) == 0]
                then
                    echo appDev_{$value} - {$date}
                fi

            fi
        fi
    done
done