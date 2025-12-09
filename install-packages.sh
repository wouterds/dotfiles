#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Packages
brew install git
brew install bash
brew install zsh zsh-autosuggestions
brew install nano
brew install curl
brew install wget
brew install grep
brew install neofetch
brew install coreutils
brew install gpg
brew install python
brew install pipx
brew install rbenv
brew install fnm
brew install htop
brew install ctop
brew install bottom
brew install screen
brew install watchman
brew install ssh-copy-id
brew install diff-so-fancy
brew install thefuck
brew install speedtest-cli
brew install mas
brew install tig
brew install ngrok
brew install eza
brew install rsync
