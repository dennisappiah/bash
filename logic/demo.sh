#!/bin/bash

# chaining commands List literals

# &&  -> the second command only runs if the first one was successful
# || -> the second command only runs if the first one failed
# & -> sends the first command number into the background of the shell process (asychronous operation)
# ; -> executes both commands one after the other regardless of the outcome of the first


echo 123 & echo "hello"
echo 1234 ; echo "hello world"
ls random-folder && echo "successful"
echo 123 || echo "hi"


# Test commands + Conditional operators
[ 2 -eq 2 ] ; echo $?    # check if 2 == 2 and exit code 0
[ 1 -ne 2 ] ; echo $?
# -gt, -lt, -geq, , -leq

a=2
b=4

[[ $a != $b ]] ; echo $?

# File test operators

[[ -e today.txt ]] ; echo $?  #checks if today.txt exist

[[ -f today.txt ]] ; echo $?  #checks if today.txt is a file

[[ -d $HOME/fh ]] ; echo $?  #checks if today.txt is a directory

[[ -x script.txt ]]   # checks if file is executable

# IF STATEMENTS

if [ 2 -gt 1 ]; then
    echo "test passed"
elif [ 1 -eq 1 ]; then
    echo "second test passed"
else
    echo "test failed"
fi

