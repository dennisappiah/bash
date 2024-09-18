#!/bin/bash

# Scenario:

# Keeping your system up to date is always a very important part of running a stable
# system.
# In this project, we are going to create a script that will update your system everyday
# at midnight.

# Description:

apt -y update
apt -y upgrade

if [ -f /var/run/reboot-required ]; then
    reboot
fi