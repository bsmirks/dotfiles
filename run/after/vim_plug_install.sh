#!/bin/bash

# updates neovim plugins found in ~/.config/nvim/init.vim
nvim --headless +PlugInstall +qall > /dev/null 2>&1
