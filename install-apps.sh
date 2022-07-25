#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Apps
brew install --cask dropbox
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask docker
brew install --cask proxyman
brew install --cask android-studio
brew install --cask keepingyouawake
brew install --cask spectacle
brew install --cask viscosity
brew install --cask alfred4
brew install --cask bartender
brew install --cask appcleaner
brew install --cask telegram
brew install --cask signal
brew install --cask discord
brew install --cask microsoft-teams
brew install --cask zoomus
brew install --cask ledger-live
brew install --cask tradingview
brew install --cask spotify
brew install --cask sonos
brew install --cask vlc
brew install --cask handbrake
brew install --cask imageoptim
brew install --cask notion
brew install --cask tableplus
brew install --cask maccy
brew install --cask monitorcontrol
brew install --cask figma
brew install --cask timemachineeditor
brew install --cask flipper
brew install --cask coconutbattery
brew install --cask displaperture
brew install --cask muzzle

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
mas install 462054704 # Microsoft Word
mas install 462058435 # Microsoft Excel
mas install 462062816 # Microsoft PowerPoint
mas install 985367838 # Microsoft Outlook
mas install 639968404 # Parcel
mas install 1147396723 # WhatsApp
mas install 937984704 # Amphetamine
mas install 1287239339 # ColorSlurp
