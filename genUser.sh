#!/bin/bash

for value in {1..30}
do
    if [ $value -lt 10 ]
    then
        useradd sysAd_0$value
        useradd appDev_0$value
        useradd webDev_0$value
    else
        useradd sysAd_$value
        useradd appDev_$value
        useradd webDev_$value

    fi

done

useradd Jay_Jay