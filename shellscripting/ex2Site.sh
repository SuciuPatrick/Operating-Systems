#!/bin/bash

director=""
while [ -z "$director" ] || [ ! -d "$director" ];do
    read -p "Insert a directory-> " director
done

for file in $director/*.c;do
    n=`grep "\.*" $file | wc -l` 
    if [ $n -lt 10 ]; then
       echo $file 
    fi    
done
