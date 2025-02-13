#!/bin/bash

#########################################
# How to use #
# Save the script: Save this bash script locally - wget https://raw.githubusercontent.com/NovoLearn/environments_demo/refs/heads/main/ubuntu_setup.sh
# Make it executable - chmod +x ./ubuntu_setup.sh
# Run the script - sudo ./ubuntu_setup.sh
#########################################


# Update and Upgrade
apt update
apt upgrade -y

# Install ansible
apt install ansible -y
