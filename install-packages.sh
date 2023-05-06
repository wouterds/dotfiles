#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Packages
brew install git
brew install bash
brew install zsh
brew install nano
brew install grep
brew install gpg
brew install curl
brew install wget
brew install python
brew install rbenv
brew install nvm
brew install htop
brew install ctop
brew install screen
brew install watchman
brew install ssh-copy-id
brew install diff-so-fancy
brew install thefuck
brew install watch
brew install speedtest-cli
brew install mas
brew install tig
brew install neofetch
brew install bottom
brew install ngrok
brew install --cask zulu11
brew install android-commandlinetools
brew install gradle
brew install exa
