#!/bin/bash

if [ ! -f "urls.txt" ]
then
    echo "Error: file urls.txt not found!"
    exit 1
fi

while read line
do
    if [[ ! "$line" =~ ^#.*$ ]]; then
        urls+=("$line")
    fi
done < "urls.txt"

for url in "${urls[@]}"
do
    xdg-open "$url"
done