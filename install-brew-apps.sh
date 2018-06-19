#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Caskroom versions
brew tap caskroom/versions

# Install some apps
brew cask install java8
brew cask install dropbox
brew cask install google-chrome
brew cask install firefox
brew cask install keepingyouawake
brew cask install docker
brew cask install atom
brew cask install phpstorm
brew cask install spotify
brew cask install spotify-notifications
brew cask install skype
brew cask install messenger
brew cask install whatsapp
brew cask install transmission
brew cask install spectacle
brew cask install viscosity
brew cask install sequel-pro
brew cask install psequel
brew cask install sketch
brew cask install zeplin
brew cask install alfred2
brew cask install knock
brew cask install application-loader
brew cask install rescuetime
brew cask install vlc
brew cask install bartender
brew cask install transmit4
brew cask install steam
brew cask install etcher
brew cask install macdown
brew cask install kitematic
brew cask install media-converter
brew cask install appcleaner
brew cask install virtualbox
brew cask install whatpulse
brew cask install zoomus
brew cask install insomnia
brew cask install arduino
brew cask install dockstation
brew cask install telegram
brew cask reinstall protonmail-bridge
brew cask install ipvanish-vpn
brew cask install torbrowser
brew cask install discord
brew cask install android-sdk
brew cask install android-platform-tools
brew cask install android-studio
brew cask install angry-ip-scanner
brew cask install visual-studio-code

# Extensions & others
brew cask install padbury-clock
brew cask install colorpicker-skalacolor
brew cask install ngrok

# Cleanup
brew cleanup
