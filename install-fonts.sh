#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Fonts
brew install --cask homebrew/cask-fonts/font-hack
brew install --cask homebrew/cask-fonts/font-impact
brew install --cask homebrew/cask-fonts/font-public-sans
brew install --cask homebrew/cask-fonts/font-raleway
brew install --cask homebrew/cask-fonts/font-oswald
brew install --cask homebrew/cask-fonts/font-inter
