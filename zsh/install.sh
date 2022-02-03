#!/bin/bash
sudo apt-get update && sudo apt-get upgrade

# Install zsh
sudo apt-get install zsh -y

# Making zsh default shell
chsh -s $(which zsh)

# Set symlink for other usage
ln -s ~/.zshrc ~/.zshenv 

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Copy .zshrc
cp .zshrc ~/.zshrc
