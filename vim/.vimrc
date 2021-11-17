set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
syntax enable




call plug#begin('~/.vim/plugged')
" Sintax
Plug 'evanleck/vim-svelte', {'branch': 'main'}
call plug#end()