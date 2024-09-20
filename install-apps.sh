#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Apps
brew install --cask google-chrome
brew install --cask dropbox
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask docker
brew install --cask proxyman
brew install --cask android-studio
brew install --cask keepingyouawake
brew install --cask viscosity
brew install --cask bartender
brew install --cask appcleaner
brew install --cask telegram
brew install --cask signal
brew install --cask discord
brew install --cask zoom
brew install --cask ledger-live
brew install --cask tradingview
brew install --cask spotify
brew install --cask sonos
brew install --cask vlc
brew install --cask handbrake
brew install --cask notion
brew install --cask tableplus
brew install --cask monitorcontrol
brew install --cask figma
brew install --cask flipper
brew install --cask coconutbattery
brew install --cask obs
brew install --cask tunnelbear
brew install --cask raspberry-pi-imager
brew install --cask google-drive
brew install --cask 1password
brew install --cask devtoys
brew install --cask balenaetcher
brew install --cask steam
brew install --cask raycast

# Mac App Store apps
mas install 497799835 # Xcode
mas install 1037126344 # Apple Configurator
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
mas install 1147396723 # WhatsApp
mas install 639968404 # Parcel
mas install 1287239339 # ColorSlurp
mas install 1543920362 # Displapertur
