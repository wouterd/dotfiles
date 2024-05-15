#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

which brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

brew install iterm2

brew install jq
brew install yq
brew install ack
brew install fd
brew install gcc
brew install gh
brew install git
brew install go
brew install httpie
brew install neovim
brew install node
brew install python@3.11
brew install ripgrep
brew install rustup-init
brew install wget
brew install tmux
brew install tree

# Remove outdated versions from the cellar.
brew cleanup
