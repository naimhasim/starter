#!/usr/bin/env bash

###############################################################################
# Sharing
###############################################################################

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "faizhasimmbp"
sudo scutil --set HostName "faizhasimmbp"
sudo scutil --set LocalHostName "faizhasimmbp"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server \
    NetBIOSName -string "faizhasimmbp"
