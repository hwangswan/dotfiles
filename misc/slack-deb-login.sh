#!/bin/bash

# A small script to login with slack debian package
#
# First download the debian package (do NOT use snap)
# https://slack.com/downloads/linux
#
# Unpack with dpkg:
# sudo dpkg -i <downloaded_pack>
#
# Start this script 
# ./slack-login.sh your-magic-link
#
# To find magic link: F12 -> Ctrl-F -> search for "slack://" and copy the link.

exec slack "$1"
