#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Caskroom versions
brew tap caskroom/versions

# Install some apps
brew cask install adoptopenjdk8
brew cask install google-backup-and-sync
brew cask install dropbox
brew cask install google-chrome
brew cask install firefox
brew cask install keepingyouawake
brew cask install docker
brew cask install phpstorm
brew cask install spotify
brew cask install spotify-notifications
brew cask install skype
brew cask install messenger
brew cask install whatsapp
brew cask install transmission
brew cask install spectacle
brew cask install viscosity
brew cask install sequel-pro-nightly
brew cask install postbird
brew cask install sketch
brew cask install alfred4
brew cask install vlc
brew cask install bartender
brew cask install transmit4
brew cask install steam
brew cask install etcher
brew cask install macdown
brew cask install appcleaner
brew cask install zoomus
brew cask install insomnia
brew cask install arduino
brew cask install telegram
brew cask reinstall protonmail-bridge
brew cask install tor-browser
brew cask install discord
brew cask install android-sdk
brew cask install android-platform-tools
brew cask install android-studio
brew cask install androidtool
brew cask install apktool
brew cask install angry-ip-scanner
brew cask install visual-studio-code
brew cask install genymotion
brew cask install teamviewer
brew cask install ledger-live
brew cask install fritzing
brew cask install charles
brew cask install diskmaker-x
brew cask install twitch
brew cask install obs
brew cask install handbrake
brew cask install ipvanish-vpn
brew cask install cityofzion-neon
brew cask install runescape
brew cask install fitbit-connect

# Extensions & others
brew cask install colorpicker-skalacolor
brew cask install ngrok

# Drivers
brew cask install homebrew/cask-drivers/silicon-labs-vcp-driver
brew cask install homebrew/cask-drivers/wch-ch34x-usb-serial-driver

# Cleanup
brew cleanup
