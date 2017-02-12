#!/usr/bin/env bash

# Copy dotfiles
cd "$(dirname "${BASH_SOURCE}")";
rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
	--exclude "init/" --exclude "brew-install-apps.sh" --exclude "brew.sh" \
	--exclude "other-tweaks.sh" --exclude "README.md" --exclude "macos.sh" --exclude "osx.sh" -avh --no-perms . ~;
source ~/.bash_profile;
