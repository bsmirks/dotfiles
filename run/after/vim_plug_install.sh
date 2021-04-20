#!/bin/bash

# updates neovim plugins found in ~/.config/nvim/init.vim
vim +'PlugInstall --sync' +qa
