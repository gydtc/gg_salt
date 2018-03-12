#!/bin/bash

#disable-sysaccount
for NAME in `cut -d: -f1 /etc/passwd`
    do
        MyUID=`id -u $NAME`
        value=`/usr/bin/passwd -S "$NAME" 2>/dev/null |grep "in use"`
        ulock=$?
        if [ $MyUID -lt 500 -a $NAME != 'root' -a $ulock -eq 0 ]; then
            echo $NAME
            usermod -L -s /dev/null $NAME 
        fi
done
