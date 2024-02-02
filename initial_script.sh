#!/bin/bash

# Update package list and upgrade existing packages
sudo apt update
sudo apt upgrade -y

# Install Git and other essential packages
sudo apt install -y git sudo python3

# Check Ansible version
ansible --version

echo "Installation complete."

