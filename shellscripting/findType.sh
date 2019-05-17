#!/bin/bash
for A in $@; do
    if [ -f $A ]; then
        echo $A is a file
    elif [ -d $A ]; then
        echo $A is a dir
    elif echo $A | grep -q "^[0-9]\+$";then
        echo $A is a number
    else
       echo we do not know what $A
    fi
done
