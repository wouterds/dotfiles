#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# macOS preferences
./install-macos-preferences.sh

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

./install-brew-packages.sh
./install-brew-apps.sh
./install-brew-store-apps.sh
./install-brew-fonts.sh
./install-nodejs-packages.sh
./install-python-packages.sh
./install-ruby-gems.sh
./install-code-packages.sh

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Copy dotfiles
cd "$(dirname "${BASH_SOURCE}")";
rsync \
	--exclude ".DS_Store" \
	--exclude ".vscode-settings.json" \
	--exclude ".git/" \
	--exclude "init/" \
	--exclude "install-atom-packages.sh" \
	--exclude "install-brew-apps.sh" \
	--exclude "install-brew-fonts.sh" \
	--exclude "install-brew-packages.sh" \
	--exclude "install-brew-store-apps.sh" \
	--exclude "install-code-packages.sh" \
	--exclude "install-macos-preferences.sh" \
	--exclude "install-nodejs-packages.sh" \
	--exclude "install-python-packages.sh" \
	--exclude "install-ruby-gems.sh" \
	--exclude "install.sh" \
 	--exclude "README.md" \
	-avh --no-perms . ~;

rsync ./.vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json

./postinstall.sh
