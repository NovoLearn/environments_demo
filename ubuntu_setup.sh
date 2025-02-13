#!/bin/bash

#########################################
# How to use
# Save the script: Save this bash script locally - wget https://raw.githubusercontent.com/NovoLearn/environments_demo/refs/heads/main/ubuntu_setup.sh
# Make it executable - chmod +x setup_python.sh
# Run the script - sudo ./setup_python.sh
#########################################


# Update and Upgrade
apt update
apt upgrade -y

# Install ansible
apt install ansible -y
