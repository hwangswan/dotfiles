#!/bin/bash

cp .vimrc ~/.vimrc

# Install vim-plug
sudo apt-get install curl

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# For shortcut
sudo apt-get install vim-gtk

# Installing powerline font for vim-airline
sudo apt-get install fonts-powerline
