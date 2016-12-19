#!/usr/bin/env bash

# Cat with syntax highlighting
easy_install Pygments
echo "" >> ~/.aliases
echo "# Cat with syntax highlighting" >> ~/.aliases
echo "alias cat='pygmentize -g'" >> ~/.aliases

# The fuck
brew install thefuck
echo "" >> ~/.aliases
echo "# Fuck alias" >> ~/.aliases
echo "eval $(thefuck --alias)" >> ~/.aliases
