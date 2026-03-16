#!/bin/bash

# This script creates a symbolic link to .bash_aliases in the home directory

echo "Setting up bash aliases..."

# Backup existing .bash_aliases if it exists
if [ -f ~/.bash_aliases ]; then
    echo "Backing up existing .bash_aliases to .bash_aliases.backup"
    mv ~/.bash_aliases ~/.bash_aliases.backup
fi

# Creates symbolic link
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ln -s "$SCRIPT_DIR/.bash_aliases" ~/.bash_aliases

echo "✓ Symbolic link created: ~/.bash_aliases -> $SCRIPT_DIR/.bash_aliases"
echo ""
echo "To apply changes, run: source ~/.bashrc"
echo "Or log out and log back in."
