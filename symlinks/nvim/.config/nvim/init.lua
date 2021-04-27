-- maplead set to ,
vim.g.mapleader = ','

-------------------- HELPERS -------------------------------

local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn   -- to call Vim functions e.g. fn.bufnr()
local g = vim.g     -- a table to access global variables
local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

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

cmd 'packadd paq-nvim'              -- load the package manager
local paq = require('paq-nvim').paq -- a convenient alias
paq {'savq/paq-nvim', opt = true}   -- paq-nvim manages itself

-- https://github.com/neovim/nvim-lspconfig
paq {'neovim/nvim-lspconfig'}
-- https://github.com/vim-syntastic/syntastic
paq {'scrooloose/syntastic'}
-- https://github.com/lervag/vimtex
paq {'lervag/vimtex'}
-- https://github.com/vim-airline/vim-airline
paq {'vim-airline/vim-airline'}
-- https://github.com/vim-airline/vim-airline-themes
paq {'vim-airline/vim-airline-themes'}
-- https://github.com/MarcWeber/vim-addon-mw-utils
paq {'MarcWeber/vim-addon-mw-utils'}
-- https://github.com/tpope/vim-fugitive
paq {'tpope/vim-fugitive'}
-- https://github.com/rodjek/vim-puppet
paq {'rodjek/vim-puppet'}
-- https://github.com/tpope/vim-sensible
paq {'tpope/vim-sensible'}
-- https://github.com/garbas/vim-snipmate
paq {'garbas/vim-snipmate'}
-- https://github.com/honza/vim-snippets
paq {'honza/vim-snippets'}
-- https://github.com/tomtom/tlib_vim
paq {'tomtom/tlib_vim'}

-------------------- OPTIONS -------------------------------

local indent = 2
cmd 'colorscheme elflord'
cmd 'syntax on'
cmd 'filetype plugin indent on'
opt('w', 'number', true)


-------------------- VIMTEX --------------------------------

cmd "let g:tex_flavor = 'latex'"

-------------------- VIM-AIRLINE-THEMES --------------------

cmd "let g:airline_theme='simple'"

-------------------- VIM-SNIPMATE --------------------------

cmd "let g:snipMate = { 'snippet_version' : 1 }"

-------------------- VIM-SYNTASTIC -------------------------

cmd 'set statusline+=%#warningmsg#'
cmd 'set statusline+=%{SyntasticStatuslineFlag()}'
cmd 'set statusline+=%*'

cmd 'let g:syntastic_always_populate_loc_list = 1'
cmd 'let g:syntastic_auto_loc_list = 1'
cmd 'let g:syntastic_check_on_open = 1'
cmd 'let g:syntastic_check_on_wq = 0'
