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

# Install homebrew packages
./install-brew-packages.sh

# Install homebrew apps
./install-brew-apps.sh

# Install homebrew mac apps
./install-brew-store-apps.sh

# Install nodejs packages
./install-nodejs-packages.sh

# Install Python packages
./install-python-packages.sh

# Install Atom packages
./install-atom-packages.sh

# Install ruby gems
./install-ruby-gems.sh

# Install homebrew fonts
./install-brew-fonts.sh

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Copy dotfiles
cd "$(dirname "${BASH_SOURCE}")";
rsync --exclude ".git/" --exclude ".DS_Store" \
	--exclude "init/" \
	--exclude "install-atom-packages.sh" \
	--exclude "install-brew-apps.sh" \
	--exclude "install-brew-fonts.sh" \
	--exclude "install-brew-packages.sh" \
	--exclude "install-brew-store-apps.sh" \
	--exclude "install-macos-preferences.sh" \
	--exclude "install-nodejs-packages.sh" \
	--exclude "install-python-packages.sh" \
	--exclude "install-ruby-gems.sh" \
	--exclude "install.sh" \
 	--exclude "README.md" \
	-avh --no-perms . ~;

# Restart apps
for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" "Dock" "Finder" "Mail" "Messages" "Safari" "SystemUIServer" "iCal"; do
  killall "${app}" > /dev/null 2>&1
done
