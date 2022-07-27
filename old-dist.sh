#!/bin/bash

# Add old PPA to update old dist.
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak 
sudo sed -i -re 's/([a-z]{2}.)?archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
sudo apt-get update && sudo apt-get dist-upgrade
