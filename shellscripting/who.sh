#!/bin/bash
who | awk '{print $1}' > le_who.txt
while read line;do
    a=`ps -u $line | wc -l`
    cat /etc/passwd | grep $line | awk -F: '{print $5}'
    echo $a
done <"le_who.txt"
