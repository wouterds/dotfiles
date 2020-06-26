#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Apps
brew cask install android-studio
brew cask install androidtool
brew cask install dropbox
brew cask install google-chrome
brew cask install firefox
brew cask install keepingyouawake
brew cask install docker
brew cask install spotify
brew cask install skype
brew cask install whatsapp
brew cask install transmission
brew cask install spectacle
brew cask install viscosity
brew cask install sequel-pro-nightly
brew cask install sketch
brew cask install alfred
brew cask install vlc
brew cask install bartender
brew cask install transmit4
brew cask install steam
brew cask install balenaetcher
brew cask install appcleaner
brew cask install zoomus
brew cask install telegram
brew cask install tor-browser
brew cask install discord
brew cask install visual-studio-code
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install genymotion
brew cask install teamviewer
brew cask install ledger-live
brew cask install handbrake
brew cask install ipvanish-vpn
brew cask install runescape
brew cask install imageoptim
brew cask install intel-power-gadget
brew cask install microsoft-teams
brew cask install sonos
brew cask install notion
brew cask install hwsensors
brew cask install paw

# Mac App Store apps
mas install 443987910 # 1Password
mas install 425424353 # The Unarchiver
mas install 1020812363 # CopyClip 2
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
mas install 1063631769 # Medis
mas install 897814548 # Proxie
mas install 462054704 # Microsoft Word
mas install 462058435 # Microsoft Excel
mas install 462062816 # Microsoft PowerPoint
mas install 533696630 # Webcam Settings
mas install 506189836 # Harvest

# Cleanup
brew cleanup
