#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Apps
brew install android-studio
brew install dropbox
brew install google-chrome
brew install keepingyouawake
brew install docker
brew install spotify
brew install transmission
brew install spectacle
brew install viscosity
brew install sketch
brew install alfred
brew install vlc
brew install bartender
brew install appcleaner
brew install zoomus
brew install telegram
brew install discord
brew install visual-studio-code
brew install ledger-live
brew install handbrake
brew install imageoptim
brew install microsoft-teams
brew install notion
brew install postman
brew install tableplus
brew install maccy
brew install monitorcontrol
brew install signal
brew install tradingview
brew install figma
brew install timemachineeditor
brew install flipper
brew install homebrew/cask-drivers/sonos
brew install homebrew/cask-drivers/jabra-direct

# Mac App Store apps
mas install 443987910 # 1Password
mas install 425424353 # The Unarchiver
mas install 411643860 # DaisyDisk
mas install 1482454543 # Twitter
mas install 1480068668 # Messenger
mas install 803453959 # Slack
mas install 457622435 # Yoink
mas install 1153157709 # Speedtest
mas install 409183694 # Keynote
mas install 409201541 # Pages
mas install 409203825 # Numbers
mas install 497799835 # Xcode
mas install 640199958 # Developer
mas install 897814548 # Proxie
mas install 462054704 # Microsoft Word
mas install 462058435 # Microsoft Excel
mas install 462062816 # Microsoft PowerPoint
mas install 985367838 # Microsoft Outlook
mas install 639968404 # Parcel
mas install 1147396723 # WhatsApp
mas install 937984704 # Amphetamine
