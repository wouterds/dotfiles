#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Fonts
brew cask install homebrew/cask-fonts/font-open-sans
brew cask install homebrew/cask-fonts/font-roboto
brew cask install homebrew/cask-fonts/font-hack
brew cask install homebrew/cask-fonts/font-impact
brew cask install homebrew/cask-fonts/font-public-sans
brew cask install homebrew/cask-fonts/font-raleway
brew cask install homebrew/cask-fonts/font-oswald

# Apps
brew cask install android-studio
brew cask install androidtool
brew cask install google-backup-and-sync
brew cask install dropbox
brew cask install google-chrome
brew cask install firefox
brew cask install keepingyouawake
brew cask install docker
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
brew cask install alfred
brew cask install vlc
brew cask install bartender
brew cask install transmit4
brew cask install steam
brew cask install balenaetcher
brew cask install macdown
brew cask install appcleaner
brew cask install zoomus
brew cask install insomnia
brew cask install arduino
brew cask install telegram
brew cask install tor-browser
brew cask install discord
brew cask install angry-ip-scanner
brew cask install visual-studio-code
brew cask install genymotion
brew cask install teamviewer
brew cask install ledger-live
brew cask install fritzing
brew cask install charles
brew cask install diskmaker-x
brew cask install twitch
brew cask install handbrake
brew cask install ipvanish-vpn
brew cask install cityofzion-neon
brew cask install runescape
brew cask install fitbit-connect
brew cask install imageoptim
brew cask install intel-power-gadget
brew cask install gdisk

# Cleanup
brew cleanup
