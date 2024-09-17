#!/bin/bash

# Author: Dennis Appiah


readarray -t urls < urls.txt

output_dir="$HOME/Downloads/bash/arrays+for-loops/output"
mkdir -p "$output_dir" 

for url in "${urls[@]}"; do
    webname=$(echo "$url" | cut -d "." -f 2)
    curl --head "$url" > "$output_dir/$webname.txt"
done
