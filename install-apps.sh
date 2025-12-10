#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Apps
brew install --cask dropbox
brew install --cask visual-studio-code
brew install --cask cursor
brew install --cask orbstack
brew install --cask proxyman
brew install --cask keepingyouawake
brew install --cask bartender
brew install --cask appcleaner
brew install --cask discord
brew install --cask spotify
brew install --cask vlc
brew install --cask handbrake
brew install --cask notion
brew install --cask tableplus
brew install --cask monitorcontrol
brew install --cask figma
brew install --cask coconutbattery
brew install --cask raycast
brew install --cask ghostty
brew install --cask chatgpt
brew install --cask chromium --no-quarantine
brew install --cask stats
brew install --cask messenger

# Mac App Store apps
mas install 497799835 # Xcode
mas install 425424353 # The Unarchiver
mas install 411643860 # DaisyDisk
mas install 803453959 # Slack
mas install 457622435 # Yoink
mas install 1153157709 # Speedtest
mas install 409183694 # Keynote
mas install 409201541 # Pages
mas install 409203825 # Numbers
mas install 639968404 # Parcel
mas install 1287239339 # ColorSlurp
mas install 1543920362 # Displaperture
