#!/bin/bash

# Install sf-mono font
git clone git@github.com:supercomputra/SF-Mono-Font.git

cd SF-Mono-Font
sudo cp * /usr/share/fonts/
fc-cache -c -v
