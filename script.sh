#!/bin/bash
cd catagory
files=`ls`


for f in $files; do 
    num=${f%_*}
    num=${num#*_}

    echo $num
    sed "s/\(.*\)/\1 ${num}/" $f >> summary.txt
    echo -e '\n' >> summary.txt
done