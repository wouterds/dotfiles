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
brew install openssh
brew install rename
brew install coreutils
brew install findutils
brew install gpg
brew install telnet
brew install curl
brew install wget
brew install ruby
brew install python
brew install nvm
brew install htop
brew install ctop
brew install autoconf
brew install screen
brew install watchman
brew install ssh-copy-id
brew install diff-so-fancy
brew install thefuck
brew install docker-compose
brew install watch
brew install speedtest-cli
brew install mas
brew install cask
brew install tor
brew install awscli
brew install tig
brew install ffmpeg
brew install gifski
brew install ios-deploy
brew install neofetch
brew install bottom
brew install ngrok
brew install adoptopenjdk8
brew install gradle
brew install android-sdk
brew install git-remote-codecommit
brew install tree
brew install act

# Cleanup
brew cleanup
