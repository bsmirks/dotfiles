" setting <LEADER> to ','
let mapleader = ","

" colorscheme
colorscheme elflord

" line numbers show when opening files
set number

" using vim-plug as Vim plugin manager
call plug#begin()

" https://github.com/iamcco/markdown-preview.nvim
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" https://github.com/vim-syntastic/syntastic
Plug 'scrooloose/syntastic'
" https://github.com/lervag/vimtex
Plug 'lervag/vimtex'
" https://github.com/MarcWeber/vim-addon-mw-utils
Plug 'MarcWeber/vim-addon-mw-utils'
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'
" https://github.com/fatih/vim-go
Plug 'fatih/vim-go'
" https://github.com/rodjek/vim-puppet
Plug 'rodjek/vim-puppet'
" https://github.com/tpope/vim-sensible
Plug 'tpope/vim-sensible'
" https://github.com/garbas/vim-snipmate
Plug 'garbas/vim-snipmate'
" https://github.com/honza/vim-snippets
Plug 'honza/vim-snippets'
" https://github.com/tomtom/tlib_vim
Plug 'tomtom/tlib_vim'

call plug#end()

syntax on
filetype plugin indent on

" vim-go settings
set autowrite

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

let g:go_fmt_command = "goimports"

" vim-snipmatee settings
let g:snipMate = { 'snippet_version' : 1 }

" vim-syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" markdown-preview settings
nmap <C-m> <Plug>MarkdownPreview

" vimtex settings
let g:tex_flavor = 'latex'
