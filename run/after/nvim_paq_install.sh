#!/bin/sh
set -o errexit -o nounset

NVIM_PAQ="${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/pack/paqs/opt/paq-nvim"

if [ ! -d "$NVIM_PAQ" ]; then
  git clone https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/opt/paq-nvim 
fi

# updates neovim plugins found in ~/.config/nvim/init.vim
nvim --headless +PaqInstall +PaqUpdate +PaqClean +qall > /dev/null 2>&1
