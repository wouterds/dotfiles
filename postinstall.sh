#!/usr/bin/env bash

# Node
nvm install --lts
nvm use --lts
npm install -g yarn
npm install -g @react-native-community/cli
npm install -g wml
npm install -g vtop

# Python
easy_install pip
easy_install pjson
easy_install pygments
easy_install statcode
easy_install pyserial
easy_install esptool

# Ruby
gem install cocoapods

# VSCode
code --install-extension dbaeumer.vscode-eslint
code --install-extension dracula-theme.theme-dracula
code --install-extension eamodio.gitlens
code --install-extension editorconfig.editorconfig
code --install-extension flowtype.flow-for-vscode
code --install-extension naumovs.color-highlight
code --install-extension peterjausovec.vscode-docker
code --install-extension zignd.html-css-class-completion
code --install-extension ms-python.python
code --install-extension mikestead.dotenv
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension vsmobile.vscode-react-native
code --install-extension vsciot-vscode.vscode-arduino
code --install-extension clinyong.hookyqr.beautify
code --install-extension ecmel.vscode-html-css
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension wix.vscode-import-cost
code --install-extension mechatroner.rainbow-csv
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension octref.vetur
code --install-extension shanoor.vscode-nginx
rsync ./.vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json

# Nano
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

# Terminal
open init/wouterds.terminal
