#!/bin/bash


#1. creating ssh keys (by default they are located in the ~/.ssh directory) ->(private and public keys)
# taking note of the password
ssh-keygen

# 2. nano public key and copy content to digital ocean or service provider

# 3. logging into to access command line shell of the remote server (ssh remoteuser@remote_ip)
ssh root@172.17.0.2

# check details of remote server you are connected
 cat /etc/os-release
 
# copying files from local server to remote server home (scp source target)

scp ~/test.sh root@172.17.0.2:~/


# copying files from remote server to local server home (scp source target)
scp root@172.17.0.2:~/test.sh   ~/