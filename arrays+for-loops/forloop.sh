#!/bin/bash

# creating indexed array from the files.txt
readarray -t files < files.txt

for file in "${files[@]}"; do
        if [ -f "$file" ]; then
            echo "file already exists"
        else
            touch "$file"
            echo "file was created"
        fi
done 