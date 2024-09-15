#!/bin/bash

# Welcome to your first Bash Script

# constants
readonly color='blue'

# user-defined variables
greeting='hello, world'
current_dir=$(pwd)  #command substitution
time=$(date +%H:%m:%s)   #command substitution
sum=$((2 + 2))  # arithmetic expansion
modulo=$((4 % 2))

x=2
y=4

echo $(( $x + $y))  # 6

echo {jan,feb,mar,apr,may,jun}  # brace expansion
echo {1,2,3,4,5,6,7,8,10}  # brace expansion
echo {1..10}
echo {1..1000..3}  # 1, 4, 7
echo {a..z}
echo month{1..12}  # month1, month2, month3, month4
#mkdir month{01..12} # month01, month02, month03...month12
#touch month{1..12}/day{01..31}.txt
echo month{1..12}/day{01..31}.txt


# formatted string print out
echo "${greeting} from ${current_dir}"
echo "${color}"
echo "${time}
echo "${sum}"