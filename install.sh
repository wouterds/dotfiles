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
./install-apps.sh
./install-fonts.sh

# Oh my ZSH!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

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

# Load some dotfiles right now
source .exports
source .path

# Postinstall
./postinstall.sh

exit
