filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

set modelines=0

execute pathogen#infect()

syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set backup
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set showcmd
set laststatus=2
set relativenumber
set undofile
set incsearch
set hlsearch
set backspace=indent,eol,start

" Always show line numbers, but only in current window
set number
:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber

set modeline
set nobackup
set nowritebackup
set list
set cpoptions+=$

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set showmatch

nnoremap <esc> :nohl<cr> :BuffergatorClose<cr>

nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

set list
set listchars=tab:▸\ ,eol:¬

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

au FocusLost * :wa

" Remove trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

nnoremap <leader>a :Ack

" HTML Fold Tag
nnoremap <leader>ft Vatzf

" Sort CSS properties
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

" Use ,v to reselect text that was just pasted
nnoremap <leader>v V`]

" Open up .vimrc file in a new, vertically split window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Map jj to the <ESC> key.
inoremap jj <ESC>

" Make ,w split window vertically then focus on new window
nnoremap <leader>w <C-w>v<C-w>l

" Make ,e split window horizontally then focus on new window
nnoremap <leader>e <C-w>s<C-w>j

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Rename the current file
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New filename: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction

map <leader>rf :call RenameFile()<cr>

map <leader>n :NERDTreeToggle<cr>

colorscheme molokai
