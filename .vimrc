"vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required

execute pathogen#infect()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tomlion/vim-solidity'
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"autocmd vimenter * NERDTree

" when paste is on, paste stuff unmodified
set pastetoggle=<F2>

set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set ai
set si
set mouse=a

inoremap <Nul> <C-n>

syntax on
colorscheme ron

set nu

set cursorline
" hi CursorLine ctermbg=240

set colorcolumn=100
"auto gets rid of whitespace
autocmd BufWritePre * %s/\s\+$//e

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch
set magic
set lazyredraw

" Helpers

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i

imap jj <Esc>

"set number relativenumber
set clipboard=unnamed
