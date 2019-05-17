if [ $# -lt 4 ]; then
    echo Not enough arguments
    exit 0
fi

dir=$1
shift
countFiles=0
for file in `find $dir`
do
    if [ ! -f $file ]; then
        continue
    fi
    count_arg=0
    for arg in $*
    do
        if grep -q $arg $file
        then
            count_cur=`expr $count_arg + 1`
        fi
    done
    if [ $count_arg -ge q ]; then
        countFiles=`expr $countFiles + 1`
    fi
done

echo $countFiles
