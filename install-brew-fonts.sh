#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Fonts
brew cask install caskroom/fonts/font-open-sans
brew cask install caskroom/fonts/font-roboto
brew cask install caskroom/fonts/font-hack
brew cask install caskroom/fonts/font-impact
brew cask install caskroom/fonts/font-public-sans
brew cask install caskroom/fonts/font-raleway
brew cask install caskroom/fonts/font-oswald

# Cleanup
brew cleanup
