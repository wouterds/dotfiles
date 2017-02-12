#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# Basics
brew install bash
brew install zsh
brew tap homebrew/versions

# Install more recent versions of some OS X tools
brew install homebrew/dupes/nano
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Some other def tools that are handy
brew install wget --with-iri
brew install git
brew install ssh-copy-id
brew install ruby
brew install curl
brew install autoconf
brew install node
brew install python
brew install python3
brew install cask
brew install josegonzalez/php/php71
brew install josegonzalez/php/composer

# Remove outdated versions from the cellar
brew cleanup
