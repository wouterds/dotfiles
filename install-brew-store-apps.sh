#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Mac App Store apps
mas install 443987910 # 1Password
mas install 425424353 # The Unarchiver
mas install 1020812363 # CopyClip 2
mas install 411643860 # DaisyDisk
mas install 1054607607 # Helium
mas install 1014850245 # Monit
mas install 409789998 # Twitter
mas install 803453959 # Slack
mas install 457622435 # Yoink
mas install 507257563 # Sip
mas install 880001334 # Reeder
mas install 1153157709 # Speedtest
mas install 409183694 # Keynote
mas install 409201541 # Pages
mas install 409203825 # Numbers
mas install 497799835 # Xcode
mas install 1141688067 # Coin Tick
mas install 568494494 # Pocket
mas install 668208984 # Giphy Capture
mas install 1063631769 # Medis
mas install 897814548 # Proxie

# Cleanup
brew cleanup
