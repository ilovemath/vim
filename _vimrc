set laststatus=2
set encoding=utf-8
set fileformats=unix,dos
set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader=";"
set clipboard=unnamed
set backspace=indent,eol,start
nnoremap <leader>v :e $MYVIMRC<cr>
nnoremap <leader>s :so $MYVIMRC<cr>
nnoremap <leader>a :!ctags -R .<cr>
nnoremap <leader>e :silent !explorer .<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>m :%s/\r//g<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>u :UndotreeToggle<cr>
nnoremap <leader>tr :NERDTreeToggle<cr>
nnoremap <leader>td :NERDTree \<left> 
nnoremap <leader>tt :TagbarToggle<cr>
nnoremap <leader>ps :PluginSearch 
nnoremap <leader>pi :PluginInstall<cr> 
nnoremap <c-h> <c-w>h 
nnoremap <c-j> <c-w>j 
nnoremap <c-k> <c-w>k 
nnoremap <c-l> <c-w>l 
inoremap <c-;> <esc>
inoremap <c-l> <del>
"maven mapping
nnoremap <leader>d :silent !debug<cr>
nnoremap <leader>i :!cls & mvn install<cr>
nnoremap <leader>c :!cls & mvn clean<cr>

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin('$HOME/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'python-mode/python-mode'
Plugin 'vim-airline'

"snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

Plugin 'Tagbar'
"Plugin 'ZenCoding.vim'
Plugin 'SuperTab'
Plugin 'mbbill/undotree'
Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
"Plugin 'artur-shaik/vim-javacomplete2'


"colors
Plugin 'tomasr/molokai'
" All of your Plugins must be added before the following line
call vundle#end()            " required
let g:molokai_original = 1
color molokai

filetype plugin indent on    " required
syntax on
set ts=4
set sw=4
set ic
set nowrap
set incsearch

if has("gui_running")
	"au GUIEnter * simalt ~x " 窗口启动时自动最大化
	set guifont=courier_new:h12
	set guioptions-=m " 隐藏菜单栏
	set guioptions-=T " 隐藏工具栏
	set guioptions-=L " 隐藏左侧滚动条
	set guioptions-=r " 隐藏右侧滚动条
	set guioptions-=b " 隐藏底部滚动条
	set showtabline=0 " 隐藏Tab栏
endif
