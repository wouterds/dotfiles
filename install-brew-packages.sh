#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Basics
brew install git
brew install bash
brew install zsh
brew install zsh-completions

# Install more recent versions of some OS X tools
brew install nano
brew install grep
brew install openssh
brew install screen
brew install watchman

# Install GNU core utilities (those that come with macOS are outdated)
brew install coreutils
brew install findutils

# Some other dev tools that are handy
brew install gpg
brew install ruby
brew install curl
brew install wget --with-iri
brew install htop
brew install ctop
brew install ssh-copy-id
brew install autoconf
brew install node
brew install python
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

# Cleanup
brew cleanup
