#!/bin/bash
sudo apt-get update && sudo apt-get upgrade

ZSH_CUSTOM=~/.oh-my-zsh/custom

# Remove installed style
rm ~/.oh-my-zsh -rf
rm ~/.zshrc

# Install zsh
sudo apt-get install zsh -y

# Making zsh default shell
chsh -s $(which zsh)

# Set symlink for other usage
ln -s ~/.zshrc ~/.zshenv 

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions

# Install passion theme
curl -fLo ${ZSH_CUSTOM}/themes/passion.zsh-theme --create-dirs \
  https://raw.githubusercontent.com/ChesterYue/ohmyzsh-theme-passion/master/passion.zsh-theme

# Copy .zshrc
cp .zshrc ~/.zshrc
