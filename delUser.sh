#!/bin/bash

for value in {1..30}
do
    if [$value -lt 10]
    then
        userdel -r sysAd_0$value
        userdel -r appDev_0$value
        userdel -r webDev_0$value
    else
        userdel -r sysAd_$value
        userdel -r appDev_$value
        userdel -r webDev_$value

    fi

done

userdel -r Jay_Jay