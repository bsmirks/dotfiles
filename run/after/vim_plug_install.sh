#!/bin/sh
set -o errexit -o nounset

VIM_PLUG="$HOME/.config/nvim/autoload/plug.vim"

if [ ! -f "$VIM_PLUG" ]; then
  curl -fLo "$VIM_PLUG" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# updates neovim plugins found in ~/.config/nvim/init.vim
nvim --headless +PlugInstall +PlugUpgrade +qall > /dev/null 2>&1
