#!/bin/bash

# Author: Dennis Appiah
# Created: 9/14/2024
# Modified: 31/12/2024

# Description:
# Creates a backup in ~/bash folder of all files in the home directory

current_date_time=$(date +%d-%m-%Y_%H-%M-%S)

tar -cvf ~/Downloads/bash/my_backup_"${current_date_time}".tar ~/* 2>/dev/null