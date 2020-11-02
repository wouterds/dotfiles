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
brew install php72
brew install composer
brew install thefuck
brew install certbot
brew install docker-compose
brew install watch
brew install speedtest-cli
brew install wakeonlan
brew install mas
brew install cask
brew install tor
brew install graphicsmagick
brew install imagemagick
brew install wpscan
brew install glances
brew install translate-shell
brew install awscli
brew install tig
brew install hub
brew install ffmpeg
brew install gifski
brew install ios-deploy
brew install neofetch
brew install googler
brew tap cjbassi/ytop && brew install ytop
brew cask install ngrok
brew cask install homebrew/cask-versions/adoptopenjdk8
brew cask install android-sdk
brew cask install android-platform-tools
brew cask install gdisk
brew install qrencode

# Cleanup
brew cleanup
