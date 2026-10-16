#!/usr/bin/env bash

# VSCode
rsync ./.vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json

# Ghostty
mkdir -p ~/Library/Application\ Support/com.mitchellh.ghostty
rsync ./.ghostty-config ~/Library/Application\ Support/com.mitchellh.ghostty/config

# Terminal
open wouterds.terminal

# Cleanup
brew cleanup
