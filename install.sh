#!/bin/bash -eu

script_dir=$(cd $(dirname "$0") && pwd)

[ ! -f "${HOME}/.tmux.conf" ] && ln -sf "${script_dir}/tmux.conf" "${HOME}/.tmux.conf" || echo ".tmux.conf already exists"

