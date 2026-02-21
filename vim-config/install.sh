#!/bin/bash


echo "Deploying .vimrc..."
cp vimrc ~/.vimrc


VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"
if [ ! -d "$VUNDLE_DIR" ]; then
    echo "Cloning Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLE_DIR"
fi


echo "Installing plugins..."
vim +PluginInstall +qall

echo "Setup complete!"
