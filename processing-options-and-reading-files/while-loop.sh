#!/bin/bash

# while loops repeats a set of a commands while a certain code is true

read -p "Enter your number: " number

while [ $number -gt 0 ]; do
    echo $number
    number=$(( number - 1 ))
done

# getops command - allows the script to accept or get options provided on the commandline
# The getopts command is often used in conjunction with
# a while loop so that we ensure that each option on the
# command line gets processed.

# ./while-loop -f 32

while getopts "c:f:" opt; do
case "$opt" in
    c) # convert from celsius to farenheit
    result=$(echo "scale=2; ($OPTARG * (9 / 5)) + 32" | bc)
    ;;
    f) # convert from fahrenheit to celsius
    result=$(echo "scale=2; ($OPTARG - 32) * (5/9)" | bc)
    ;;
    \?)
    echo "Invalid option provided"
;;
esac
echo "$result"
done


# read-while loop for iterating over files
while read line; do
    echo "$line"
done < file1.txt     # read line from file1.txt and do echo each line


