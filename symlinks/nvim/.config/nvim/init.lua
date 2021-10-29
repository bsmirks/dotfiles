-- maplead set to ,
vim.g.mapleader = ','

-------------------- HELPERS -------------------------------

local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn   -- to call Vim functions e.g. fn.bufnr()
local g = vim.g     -- a table to access global variables
local scopes = {o = vim.o, b = vim.bo, w = vim.wo}
local set = vim.opt -- set options

local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-------------------- PLUGINS -------------------------------

local paq = require("paq") -- load module

require 'paq' {
    -- https://github.com/savq/paq-nvim
    "savq/paq-nvim"; -- paq managing itself
    -- https://github.com/neovim/nvim-lspconfig
    "neovim/nvim-lspconfig";
    -- https://github.com/vim-syntastic/syntastic
    "scrooloose/syntastic";
    -- https://github.com/tomtom/tlib_vim
    "tomtom/tlib_vim";
    -- https://github.com/lervag/vimtex
    "lervag/vimtex";
    -- https://github.com/vim-airline/vim-airline
    "vim-airline/vim-airline";
    -- https://github.com/vim-airline/vim-airline-themes
    "vim-airline/vim-airline-themes";
    -- https://github.com/MarcWeber/vim-addon-mw-utils
    "MarcWeber/vim-addon-mw-utils";
    -- https://github.com/rodjek/vim-puppet
    "rodjek/vim-puppet";
    -- https://github.com/tpope/vim-sensible
    "tpope/vim-sensible";
    -- https://github.com/bsmirks/whid
    "bsmirks/whid";
}

-------------------- OPTIONS -------------------------------

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
cmd 'colorscheme elflord'
cmd 'syntax on'
cmd 'filetype plugin indent on'
opt('w', 'number', true)

-------------------- VIMTEX --------------------------------

g['tex_flavor'] = 'latex'

-------------------- VIM-AIRLINE-THEMES --------------------

g['airline_theme'] = 'simple'

-------------------- VIM-SYNTASTIC -------------------------

cmd 'set statusline+=%#warningmsg#'
cmd 'set statusline+=%{SyntasticStatuslineFlag()}'
cmd 'set statusline+=%*'

g['syntastic_always_populate_loc_list'] = '1'
g['syntastic_auto_loc_list'] = '1'
g['syntastic_check_on_open'] = '1'
g['syntastic_check_on_wq'] = '0'
