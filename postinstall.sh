#!/usr/bin/env bash

# Android
mkdir ~/.android
touch ~/.android/repositories.cfg
yes | sdkmanager --licenses
sdkmanager "platforms;android-30" "cmdline-tools;latest" "build-tools;31.0.0"

# Node
mkdir ~/.nvm
nvm install 18
nvm use 18
nvm alias default 18
npm install -g yarn
npm install -g papapackage
npm install -g ios-deploy

# Python
pip3 install pjson
pip3 install pygments
pip3 install asitop

# VSCode
code --install-extension dbaeumer.vscode-eslint
code --install-extension GitHub.github-vscode-theme
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
code --install-extension clinyong.hookyqr.beautify
code --install-extension ecmel.vscode-html-css
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension wix.vscode-import-cost
code --install-extension mechatroner.rainbow-csv
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension octref.vetur
code --install-extension shanoor.vscode-nginx
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension earshinov.permute-lines
code --install-extension redhat.vscode-yaml
code --install-extension juanblanco.solidity
code --install-extension cpylua.language-postcss
code --install-extension stylelint.vscode-stylelint
code --install-extension jianbingfang.dupchecker
code --install-extension GitHub.copilot
code --install-extension dracula-theme.theme-dracula
code --install-extension yoavbls.pretty-ts-errors
rsync ./.vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json

# Nano
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

# Terminal
open wouterds.terminal

# Cleanup
brew cleanup
