#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install macos preferences
./install-macos-preferences.sh

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade --all

# Install homebrew binaries
./install-brew-binaries.sh

# Install homebrew fonts
./install-brew-fonts.sh

# Install homebrew apps
./install-brew-apps.sh

# Install homebrew mac apps
./install-brew-store-apps.sh

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Copy dotfiles
cd "$(dirname "${BASH_SOURCE}")";
rsync --exclude ".git/" --exclude ".DS_Store" --exclude "init/" --exclude "README.md" \
	--exclude "install.sh" \
	--exclude "install-brew-apps.sh" \
	--exclude "install-brew-binaries.sh" \
	--exclude "install-brew-fonts.sh" \
	--exclude "install-brew-mac-apps.sh" \
	--exclude "install-brew-other.sh" \
	--exclude "install-macos-preferences.sh" \
	-avh --no-perms . ~;

# Install remaining homebrew deps
./install-brew-other.sh

# Load bash profile
source ~/.bash_profile;
