#!/usr/bin/env bash

# install tpm
if [ -d ~/.tmux/plugins/tpm ]; then
    echo "tmux plugin manager already exists."
else
    echo "installing tmux plugin manager"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    exit 1
fi
