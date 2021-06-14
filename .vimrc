syntax enable
set clipboard+=unnamedplus
set relativenumber
set number
set mouse=a
set numberwidth=1
set scrolloff=7
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2
let NERDTreeQuitOnOpen=1
set tabstop=2
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

"***********************************************************************************************************************************
call plug#begin('~/.local/share/nvim/plugged')

" Temas
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }

" Utilidades
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'

Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

Plug 'scrooloose/nerdcommenter'

Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
"***********************************************************************************************************************************

" Airline
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" temas
set termguicolors

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Temas


" badwolf
let g:badwolf_darkgutter = 1
let g:badwolf_tabline = 3

" molokai
"let g:rehash256 = 1

let g:gruvbox_contrast_dark='soft'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=1

set background=dark

colorscheme gruvbox

" kite
let g:kite_supported_languages = ['*',]
let g:kite_tab_complete=1

" shortcuts
let mapleader=' '
nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>n :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>f :FZF<CR>
inoremap <c-space> <C-x><C-u>

