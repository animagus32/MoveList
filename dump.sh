#!/bin/bash

files=`ls *.txt`

# echo $files
function generateCatlogFile() 
{
    name=$1
    name=${name%%.*}
    awk -F '/' ' {print $1}' $1 | grep -v '\$'| uniq > ${name}_cat.txt
}

for f in $files; do
    generateCatlogFile $f
done