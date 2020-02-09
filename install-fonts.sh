#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Fonts
brew cask install homebrew/cask-fonts/font-open-sans
brew cask install homebrew/cask-fonts/font-roboto
brew cask install homebrew/cask-fonts/font-hack
brew cask install homebrew/cask-fonts/font-impact
brew cask install homebrew/cask-fonts/font-public-sans
brew cask install homebrew/cask-fonts/font-raleway
brew cask install homebrew/cask-fonts/font-oswald

# Cleanup
brew cleanup
