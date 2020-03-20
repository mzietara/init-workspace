:imap jj <Esc>
syntax on
set number

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 25
""colorscheme onedark

set nowrap
set encoding=utf8

"""" START Vundle Configuration
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'fatih/vim-go'
" Add plugins here
"
call vundle#end()
filetype plugin indent on

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
