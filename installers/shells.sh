#!/usr/bin/env zsh

###############################################################################
# Shells
###############################################################################

# Add shells installed by Homebrew
# sudo bash -c "which zsh bash >> /etc/shells"

# Set default shell for the current user
# chsh -s "$(which zsh)"
# sudo dscl . -create /Users/$USER UserShell "$(which zsh)"

# Create antigen directory
mkdir -p ~/.antigen
mkdir -p ~/.antigen/themes

# Download Antigen
curl -L git.io/antigen > ~/.antigen/antigen.zsh
. ~/.antigen/antigen.zsh
