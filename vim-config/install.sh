#!/bin/bash


# Copy vimrc from the repo to the home directory
echo "Deploying .vimrc..."
cp vimrc ~/.vimrc

# Check if Vundle (Vim plugin manager) is already installed
VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"
if [ ! -d "$VUNDLE_DIR" ]; then  # Clone Vundle from GitHub if it doesn't exist
    echo "Cloning Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLE_DIR"
fi

# Launch Vim to automatically install all listed plugins, then quit
echo "Installing plugins..."
vim +PluginInstall +qall

echo "Setup complete!"
