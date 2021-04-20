#!/bin/bash

# clear out the target directory
rm -rf ~/.zsh/*

# download 'zsh-autosuggestions' plugin
cd ~/.zsh && git clone git@github.com:zsh-users/zsh-autosuggestions.git

# download 'fast-syntax-highlighting' plugin
cd ~/.zsh && git clone git@github.com:zdharma/fast-syntax-highlighting.git
