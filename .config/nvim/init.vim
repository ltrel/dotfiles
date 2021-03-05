call plug#begin('~/.vim/plugged')
Plug 'sainnhe/gruvbox-material'
call plug#end()

"Misc
set nocompatible
filetype indent plugin on
syntax on


set hidden

set incsearch
set hlsearch
set ignorecase
set smartcase

set backspace=indent,eol,start
set autoindent
set nostartofline

set confirm
set visualbell
set t_vb=

set shiftwidth=4
set softtabstop=4
set expandtab

set splitbelow
set splitright
set wrap
set linebreak

"Appearance
set number
set relativenumber
set showmatch
set encoding=utf8
syntax enable
set scrolloff=10
"colorscheme default

if has('termguicolors')
    set termguicolors
endif
set background=dark
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_palette = 'mix'
colorscheme gruvbox-material

"Mapping
let mapleader=","
nmap <leader>T :enew<cr>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>
nmap <leader>f :Vex<CR>
noremap <Leader>s :update<CR>
noremap <Leader><Space> :nohl<CR>
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <Up> gk
noremap <Down> gj
map <F5> :setlocal spell! spelllang=en_au<CR>
noremap j gj
noremap k gk

"Netrw Options
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
