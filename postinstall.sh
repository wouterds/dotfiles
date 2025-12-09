#!/usr/bin/env bash

# Python
pipx install pjson
pipx install pygments

# VSCode
code --install-extension dbaeumer.vscode-eslint
code --install-extension GitHub.github-vscode-theme
code --install-extension eamodio.gitlens
code --install-extension editorconfig.editorconfig
code --install-extension naumovs.color-highlight
code --install-extension mikestead.dotenv
code --install-extension christian-kohler.npm-intellisense
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension wix.vscode-import-cost
code --install-extension mechatroner.rainbow-csv
code --install-extension earshinov.permute-lines
code --install-extension redhat.vscode-yaml
code --install-extension cpylua.language-postcss
code --install-extension stylelint.vscode-stylelint
code --install-extension jianbingfang.dupchecker
code --install-extension dracula-theme.theme-dracula
code --install-extension yoavbls.pretty-ts-errors
rsync ./.vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json

# Terminal
open wouterds.terminal

# Cleanup
brew cleanup
