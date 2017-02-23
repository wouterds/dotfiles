#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Caskroom versions
brew tap caskroom/versions

# Install some apps
brew cask install dropbox --appdir=/Applications
brew cask install google-drive --appdir=/Applications
brew cask install google-chrome --appdir=/Applications
brew cask install firefox --appdir=/Applications
brew cask install keepingyouawake --appdir=/Applications
brew cask install docker --appdir=/Applications
brew cask install atom --appdir=/Applications
brew cask install phpstorm --appdir=/Applications
brew cask install spotify --appdir=/Applications
brew cask install spotify-notifications --appdir=/Applications
brew cask install skype --appdir=/Applications
brew cask install messenger --appdir=/Applications
brew cask install whatsapp --appdir=/Applications
brew cask install transmission --appdir=/Applications
brew cask install spectacle --appdir=/Applications
brew cask install viscosity --appdir=/Applications
brew cask install sequel-pro-nightly --appdir=/Applications
brew cask install sketch --appdir=/Applications
brew cask install kibako --appdir=/Applications
brew cask install alfred2 --appdir=/Applications
brew cask install knock --appdir=/Applications
brew cask install application-loader --appdir=/Applications
brew cask install rescuetime --appdir=/Applications
brew cask install vlc --appdir=/Applications
brew cask install bartender --appdir=/Applications
brew cask install fanny --appdir=/Applications
brew cask install transmit --appdir=/Applications
brew cask install hipchat --apdir=/Applications
brew cask install steam --apdir=/Applications

# Extensions etc
brew cask install aerial
brew cask install colorpicker-skalacolor

# Cleanup
brew cleanup
