#!/usr/bin/env bash

###############################################################################
# Sharing                                                                     #
###############################################################################

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "faizhasim"
sudo scutil --set HostName "faizhasim"
sudo scutil --set LocalHostName "faizhasim"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server \
    NetBIOSName -string "faizhasim"
