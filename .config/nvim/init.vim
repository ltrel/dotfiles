"Plugins
call plug#begin('~/.vim/plugged')
Plug 'sainnhe/gruvbox-material'
call plug#end()

"Misc
set nocompatible
set backspace=indent,eol,start
filetype indent plugin on
set encoding=utf8
set confirm

"Buffers
set hidden
set nostartofline

"Searching with smartcase
set incsearch
set hlsearch
set ignorecase
set smartcase

"No bell
set visualbell
set t_vb=

"Line wrapping
set wrap
set linebreak

"Indentation
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab

"Window splitting
set splitbelow
set splitright

"Appearance
set number
set relativenumber
set showmatch
syntax enable
set scrolloff=10
"Use truecolor if supported
if has('termguicolors')
    set termguicolors
endif
set background=dark
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_palette = 'mix'
colorscheme gruvbox-material

"Mappings
let mapleader=","
noremap <Leader>s :update<CR>
noremap <Leader><Space> :nohl<CR>
map <F5> :setlocal spell! spelllang=en_au<CR>
"Buffers
nmap <leader>T :enew<cr>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>
nmap <leader>f :Vex<CR>
"Window switching
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
"Scroll by visual lines
noremap j gj
noremap k gk
noremap <Up> gk
noremap <Down> gj

"Netrw Options
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
