#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# macOS preferences
./macos-prefs.sh

# Taps
brew tap homebrew/cask-versions
brew tap homebrew/cask-drivers

# Install packages, drivers, apps & fonts
./install-packages.sh
./install-apps.sh

# Dotfiles
rsync -avh --no-perms '.aliases' ~;
rsync -avh --no-perms '.exports' ~;
rsync -avh --no-perms '.functions' ~;
rsync -avh --no-perms '.gitconfig' ~;
rsync -avh --no-perms '.nanorc' ~;
rsync -avh --no-perms '.path' ~;
rsync -avh --no-perms '.zshrc' ~;

# Load some dotfiles right now
source .exports
source .path

# Postinstall
./postinstall.sh

exit
