#!/bin/sh
S=0
for f in $1/*.c; do
    N=`grep -c "[^ \t]" $f`
    S=`expr $S + $N`
done
echo $S
