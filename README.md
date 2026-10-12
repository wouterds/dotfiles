# Wouter's dotfiles ❤ ~/

Personal preferences, apps, tools and more.

## Prerequisites

- Xcode installed
- Homebrew installed
- Logged in into App Store

## PATH

`.zshrc` sources `.path` first (Homebrew via `brew shellenv`, brew `curl`, `~/.local/bin`). Anything added further down (fnm, bun, …) is prepended on top, and `typeset -U path` drops duplicates. Don't hardcode system dirs like `/usr/bin` in `.path`, it pushes them in front of Homebrew.
