" vim config for c/c++ and maybe some python

set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'whatyouhide/vim-gotham'
Plugin 'severin-lemaignan/vim-minimap'

call vundle#end()
filetype plugin indent on

" turn on syntadx highlighting
set t_Co=256
syntax on

" set solarized background
colorscheme gotham

" Set utf-8
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" use indentation of pervious line 
set autoindent

" set intelligent indentation 
set smartindent

" configure tabs
set tabstop=4
set shiftwidth=4

" set wraparound to 120
set textwidth=120

" turn on line numbering
set number 

" turn on matching braces
set showmatch

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

if has("autocmd")
	filetype on
	filetype indent on
	filetype plugin on
endif

" key mappings
map <C-n> :NERDTreeToggle<CR>
