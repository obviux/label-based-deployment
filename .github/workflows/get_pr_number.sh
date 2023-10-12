#!/bin/bash

# Check if no arguments were provided
if [ $# -eq 0 ]; then
    echo "No arguments provided"
    echo "Usage: ./get_pr_number.sh <input_string>"
    exit 1
fi

var=$1
echo $1
echo $var

for element in $var
do
    if [[ $element =~ ^number:[0-9]+$ ]]; then
        pr_number=${element#*:}
        echo $pr_number
    fi
done
