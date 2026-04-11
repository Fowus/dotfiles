#!/bin/bash

# Define the software name
SOFT="ansible"

# 1. Check for Root/Sudo (EUID)
if [ "$EUID" -ne 0 ]; then
  echo "Error: This script requires sudo or root privileges."
  exit 1
fi

# 2. Check for apt package manager
if ! command -v apt &> /dev/null; then
  echo "Error: This script is designed for systems using the 'apt' package manager."
  exit 1
fi

# 3. Inform user and prompt for 'y' or 'n'
echo "This script will install Ansible and its dependencies via the official PPA."
read -p "Do you want to proceed? (y/n): " confirm

if [[ "$confirm" != "y" ]]; then
  echo "Installation cancelled by user."
  exit 0
fi

# 4. Check if the command 'ansible' already exists (Name Conflict)
if command -v $SOFT &> /dev/null; then
  echo "Error: A conflict occurred. The command '$SOFT' is already present on this system."
  exit 1
fi

# 5. Silent Installation
echo "Installing $SOFT... please wait."
# Update and install dependencies silently
apt-get update -qq && apt-get install -y -qq software-properties-common > /dev/null
# Add PPA silently
add-apt-repository -y ppa:ansible/ansible > /dev/null
# Final update and install
apt-get update -qq && apt-get install -y -qq ansible > /dev/null

# 6. Completion Prompt
echo "------------------------------------------------"
echo "Install complete! You can now use Ansible."
echo "Try running: ansible --version"
