set mouse=""

" Make tabs not crazy
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

let g:mapleader=','
let g:maplocalleader='\\'
set relativenumber

" Always show line numbers, but only in current window
:au WinEnter * :setlocal relativenumber
:au WinLeave * :setlocal norelativenumber

set encoding=utf-8

" Search options
set hlsearch
set incsearch
set ignorecase
set smartcase
map <CR> :nohl<cr>

" highlight current row and column
set cursorline
set cursorcolumn

" Set the title of the iterm tab
set title

" don't use default regex handling
nnoremap / /\v
vnoremap / /\v

" applies substitutions globally on lines
set gdefault

" don't have to press the shift key to get colon
nnoremap ; :

" Map jj to the escape key
inoremap jj <ESC>

" Make ,w split window vertically then focus on new window¬
nnoremap <leader>w <C-w>v<C-w>l¬

" Make ,e split window horizontally then focus on new window¬
nnoremap <leader>e <C-w>s<C-w>j¬

" Make it easier to navigate split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
  " use tab for completion
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

Plug 'sheerun/vim-polyglot'

Plug 'tomasr/molokai'

Plug 'neomake/neomake'
  augroup localneomake
    autocmd! BufWritePost * Neomake
  augroup END
  let g:neomake_markdown_enabled_makers = []
  let g:neomake_elixir_enabled_makers = ['mix', 'credo']

" Not sure why, but these don't work
"Plug 'c-brenn/phoenix.vim'
"Plug 'tpope/vim-projectionist'

Plug 'slashmili/alchemist.vim'

call plug#end()

set background=dark
syntax enable
colorscheme molokai
