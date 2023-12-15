#!/bin/bash
count=0
scriptname=$1
echo "test $scriptname"
echo $(date) > log.txt

while true
do
    ./$scriptname &>> log.txt
    if [ $? -ne 0 ]; then
        cat log.txt
        echo "Failed after $count times."
        break
    fi
    ((count++))
done