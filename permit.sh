#!/bin/bash
groupadd -f sysAdSecondYears
groupadd -f sysAdThirdYears
groupadd -f sysAdFourthYears
groupadd -f appDevSecondYears
groupadd -f appDevThirdYears
groupadd -f appDevFourthYears
groupadd -f webDevSecondYears
groupadd -f webDevThirdYears
groupadd -f webDevFourthYears
for value in range{1..30}
do
    if  [ $value -gt 10 ] && [ $value -lt 20 ] && [ $value -eq 20 ]
    then
        usermod -a -G sysAdSecondYears sysAd_$value
        usermod -a -G appDevSecondYears appDev_$value
        usermod -a -G webDevSecondYears  webDev_$value
    elif [ $value -lt 30 ] && [ $value -eq 30 ]
    then
        usermod -a -G sysAdSecondYears,sysAdThirdYears sysAd_$value
        usermod -a -G appDevSecondYears,appDevThirdYears appDev_$value
        usermod -a -G webDevSecondYears,webDevThirdYears  webDev_$value
    fi

    if [ $value -lt 10 ]
    then
        chown -R :sysAdSecondYears /home/sysAd_0$value
        chmod -R g+rw /home/sysAd_0$value
        chown -R :appDevSecondYears /home/appDev_0$value
        chmod -R g+rw /home/appDev_0$value
        chown -R :webDevSecondYears /home/webDev_0$value
        chmod -R g+rw /home/webDev_0$value
    elif [ $value -eq 10 ]
    then
        chown -R :sysAdSecondYears /home/sysAd_$value
        chmod -R g+rw /home/sysAd_$value
        chown -R :appDevSecondYears /home/appDev_$value
        chmod -R g+rw /home/appDev_$value
        chown -R :webDevSecondYears /home/webDev_$value
        chmod -R g+rw /home/webDev_$value
    elif [ $value -lt 20 ] && [ $value -eq 20 ]
    then
        chown -R :sysAdThirdYears /home/sysAd_$value
        chmod -R g+rw /home/sysAd_$value
        chown -R :appDevThirdYears /home/appDev_$value
        chmod -R g+rw /home/appDev_$value
        chown -R :webDevThirdYears /home/webDev_$value
        chmod -R g+rw /home/webDev_$value
    elif [ $value -lt 30 ] && [ $value -eq 30 ]
    then
        chown -R :sysAdFourthYears /home/sysAd_$value
        chmod -R g+rw /home/sysAd_$value
        chown -R :appDevFourthYears /home/appDev_$value
        chmod -R g+rw /home/appDev_$value
        chown -R :webDevFourthYears /home/webDev_$value
        chmod -R g+rw /home/webDev_$value
done

usermod -a -G sysAdSecondYears,sysAdThirdYears,sysAdFourthYears,webDevSecondYears,webDevThirdYears,webDevFourthYears,appDevSecondYears,appDevThirdYears,appDevFourthYears Jay_Jay
