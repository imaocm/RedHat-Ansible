#!/bin/bash

#Install Python 2.7
# Create a User to automate  with Ansible
# CP virt folder to your user home directory
# Add aliases to your user .bashrc 
# you can use virtansible27 virtansible23 virtansiblelatest to activate virtualenv


echo "Setup Ansible in your Workstation !"

read -p "Create User for ansible : " username
useradd $username
read -p -s "Password for User $username : " password
echo "$password" | passwd --stdin $username

echo "User created successfuly !"


cp -a ~/virt  /home/$username/
cat aliases.txt >> /home/$username/.bashrc
virtansible27
ansible --version
echo "$username ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$username

