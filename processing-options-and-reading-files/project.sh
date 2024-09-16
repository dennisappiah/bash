#!/bin/bash

# Author: Dennis Appiah
# Created: 9/14/2024
# Modified: 31/12/2024

# Scenario:
# You are tasked with setting up the folder structure for a shared network drive, and
# have been given a text file, `folders_to_create.txt``, which contains a list of directory
# names that need to be created.


while read line; do
 mkdir "$line"
done < "$1"