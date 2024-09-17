#!/bin/bash

numbers=(1 2 3 4 5)

echo "${numbers[@]}"   # print all elements
echo "${numbers[2]}"    # print third element

# add new array element
numbers+=6
# delete third number
unset numbers[2]

# Using the `readarray` command to create indexed arrays from files

readarray -t days < days.txt  

echo ${days[@]}   # Monday Tuesday Wednesday Thursday Friday Saturday Sunday

# touch file{001..100}.txt

# creating array to store the absolute paths of files in the array directory
# ls ~/Downloads/bash/arrays+for-loops/array/*

readarray -t files < <(ls ~/Downloads/bash/arrays+for-loops/array)
echo "${files[@]}"

echo "${!files[@]}"


for day in "${days[@]}"; do
    echo "$line"
do