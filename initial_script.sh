#!/bin/bash

# Check if a username was provided as a command line argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

# Assign the first command line argument to the username variable
USERNAME=$1

# Update package list and upgrade existing packages
dnf update -y

# Install Git and other essential packages
dnf install -y git sudo python3 ansible

# Clone the Ansible repository
git clone https://github.com/probird5/ansible.git

cd ansible

# Check Ansible version
ansible --version

echo "Installation complete."

sleep 3

echo "Running ansible"

# Run Ansible playbook with the provided username
ansible-playbook local.yml -e "username=$USERNAME"

