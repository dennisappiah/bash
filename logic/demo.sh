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