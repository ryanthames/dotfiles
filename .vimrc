
call pathogen#incubate()
filetype plugin indent on

" vi is old, no need for compatibility
set nocompatible

" prevents certain security exploits
set modelines=0

execute pathogen#infect()

syntax on

set tabstop=2
set softtabstop=2
set shiftwidth=2
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

" Creates a <FILENAME>.un~ to undo changes even after closing/reopening a file
set undofile

set incsearch
set hlsearch
set backspace=indent,eol,start

" Always show line numbers, but only in current window
:au WinEnter * :setlocal relativenumber
:au WinLeave * :setlocal norelativenumber

set modeline
set nobackup
set nowritebackup
set list
set cpoptions+=$


let mapleader = ","

" essentially turns off vim's default regex handling
nnoremap / /\v
vnoremap / /\v

" ignores case unless one or more letters are uppercase
set ignorecase
set smartcase

" applies substitutions globally on lines
set gdefault

set showmatch

nnoremap <esc> :nohl<cr> :BuffergatorClose<cr>

" makes it very simple to clear highlighting after done with searching
nnoremap <leader><space> :noh<cr>

nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1

" Sets a color at column 85 so I know when a line is getting too long
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

" don't have to press the shift key in order to save a file, etc
nnoremap ; :

" saves a files after losing focus (i.e. tabbing away)
au FocusLost * :wa

" Remove trailing whitespace from a file
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

" Ultisnips config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" indentLine config
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

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

" For whatever reason, vim thinks iTerm only supports 8 colors. This allows vim
" to use colorthemes
let &t_Co=256
colorscheme molokai
"colorscheme ubloh

" Tab autocomplete unless at beginning of line
function! InsertTabWrapper()
  let line = getline('.')                     " current line

  let substr = strpart(line, -1, col('.')+1)  " from the start of the current
                                              " line to one character right
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  endif

  return "\<C-n>"                     " existing text matching
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-p>

let g:notes_directories = ['~/Dropbox/notes']
