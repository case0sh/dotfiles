set mouse=
set dy=lastline
set shiftwidth=2
set smarttab
set iminsert=0
set imsearch=0
"set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]
au BufRead /tmp/mutt-* set tw=72
filetype plugin indent on 
set encoding=utf-8 
set nocompatible
"set number
set cursorline 
"set cursorcolumn

set ic

set showcmd
set linebreak
set dy=lastline
syntax on
set paste
colorscheme delek
set laststatus=2   
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]
set expandtab
set tabstop=3
set smartindent
set autoindent
set ruler 
set showmatch
imap [ []
imap { {}
