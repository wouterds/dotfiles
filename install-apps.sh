#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Apps
brew install --cask android-studio
brew install --cask androidtool
brew install --cask dropbox
brew install --cask google-chrome
brew install --cask firefox
brew install --cask keepingyouawake
brew install --cask docker
brew install --cask spotify
brew install --cask skype
brew install --cask transmission
brew install --cask spectacle
brew install --cask viscosity
brew install --cask sketch
brew install --cask alfred
brew install --cask vlc
brew install --cask bartender
brew install --cask transmit4
brew install --cask balenaetcher
brew install --cask appcleaner
brew install --cask zoomus
brew install --cask telegram
brew install --cask tor-browser
brew install --cask discord
brew install --cask visual-studio-code
brew install --cask virtualbox
brew install --cask virtualbox-extension-pack
brew install --cask genymotion
brew install --cask ledger-live
brew install --cask handbrake
brew install --cask ipvanish-vpn
brew install --cask runescape
brew install --cask imageoptim
brew install --cask intel-power-gadget
brew install --cask microsoft-teams
brew install --cask sonos
brew install --cask notion
brew install --cask postman
brew install --cask betaflight-configurator
brew install --cask lastpass
brew install --cask tableplus
brew install --cask maccy
brew install --cask monitorcontrol

# Mac App Store apps
mas install 443987910 # 1Password
mas install 425424353 # The Unarchiver
mas install 411643860 # DaisyDisk
mas install 1054607607 # Helium
mas install 1014850245 # Monit
mas install 1482454543 # Twitter
mas install 1480068668 # Messenger
mas install 803453959 # Slack
mas install 457622435 # Yoink
mas install 507257563 # Sip
mas install 880001334 # Reeder
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
mas install 533696630 # Webcam Settings
mas install 506189836 # Harvest
mas install 639968404 # Parcel
mas install 1147396723 # WhatsApp

# Cleanup
brew cleanup
