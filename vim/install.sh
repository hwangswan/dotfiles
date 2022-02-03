#!/bin/bash
sudo apt-get update && sudo apt-get upgrade

# Copy new .vimrc
cp .vimrc ~/.vimrc

# Install vim-plug
sudo apt-get install curl -y

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# For shortcut
sudo apt-get install vim-gtk -y

# Installing powerline font for vim-airline
sudo apt-get install fonts-powerline -y

# Install fonts for nerdtree

# for unzipping zip
sudo apt-get install unzip -y

curl -fLo ~/.fonts/RobotoMono.zip --create-dirs \
  https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/RobotoMono.zip

cd ~/.fonts

unzip RobotoMono.zip

rm RobotoMono.zip
