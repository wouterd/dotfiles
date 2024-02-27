#!/bin/bash -eu

[ ! -f ~/.tmux.conf ] && ln -s ./.tmux.conf ~/.tmux.conf || echo "tmux.conf already exists"

