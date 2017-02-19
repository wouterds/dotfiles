#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Cat with syntax highlighting
easy_install Pygments
echo '' >> ~/.aliases
echo '# Cat with syntax highlighting' >> ~/.aliases
echo 'alias cat="pygmentize -g"' >> ~/.aliases

# The fuck
brew install thefuck
echo '' >> ~/.aliases
echo '# Fuck alias' >> ~/.aliases
echo 'eval "$(thefuck --alias)"' >> ~/.aliases
