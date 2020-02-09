#!/usr/bin/env bash

# Privileges
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# macOS preferences
./macos-prefs.sh

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install packages, drivers, apps & fonts
./install-packages.sh
./install-drivers.sh
./install-apps.sh
./install-fonts.sh

# (Oh my!) ZSH (needs to run before we copy dotfiles)
./postinstall-zsh.sh

# Dotfiles
rsync -avh --no-perms '.aliases' ~;
rsync -avh --no-perms '.editorconfig' ~;
rsync -avh --no-perms '.exports' ~;
rsync -avh --no-perms '.functions' ~;
rsync -avh --no-perms '.gitconfig' ~;
rsync -avh --no-perms '.gitignore' ~;
rsync -avh --no-perms '.nanorc' ~;
rsync -avh --no-perms '.path' ~;
rsync -avh --no-perms '.screenrc' ~;
rsync -avh --no-perms '.wgetrc' ~;
rsync -avh --no-perms '.zshrc' ~;

# Postinstall
source .exports
source .path
./postinstall-git.sh
./postinstall-node.sh
./postinstall-python.sh
./postinstall-ruby.sh
./postinstall-vscode.sh
./postinstall-terminal.sh
