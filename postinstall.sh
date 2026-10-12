#!/usr/bin/env bash

# VSCode
rsync ./.vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json

# Terminal
open wouterds.terminal

# Cleanup
brew cleanup
