#!/bin/bash

if [ ! -f "urls.txt" ]
then
    echo "Error: file urls.txt not found!"
    exit 1
fi

while read line
do
    if [[ ! "$line" =~ ^#.*$ ]]; then
        open -a "Safari" $line
    fi
done < "urls.txt"
