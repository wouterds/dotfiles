#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Drivers
brew cask install homebrew/cask-drivers/silicon-labs-vcp-driver
brew cask install homebrew/cask-drivers/wch-ch34x-usb-serial-driver

# Cleanup
brew cleanup
