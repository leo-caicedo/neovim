syntax on
set autoread
if has("autocmd")
   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set background=dark
set clipboard+=unnamedplus
set relativenumber
set number
set mouse=a
set numberwidth=1
set scrolloff=8
set showcmd
set ruler
set cursorline
"set cursorcolumn
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2
let NERDTreeQuitOnOpen=1
set exrc
set smartindent
set nohlsearch
set noswapfile
set nobackup
set incsearch
set updatetime=50
set hidden
"set tabstop=2
"set softtabstop=4
"set shiftwidth=4
"set expandtab
"set autoindent
"set fileformat=unix

call plug#begin('~/.local/share/nvim/plugged')

" Temas
Plug 'sainnhe/everforest'

" Utilidades
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

Plug 'jiangmiao/auto-pairs'
"Plugin 'alvan/vim-closetag'
Plug 'scrooloose/nerdcommenter'

Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'

Plug 'pangloss/vim-javascript'

Plug 'Yggdroot/indentLine'

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

call plug#end()

" Airline
let g:airline_experimental = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1

" pangloss javascript
set conceallevel=1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"let g:javascript_conceal_function             = "ƒ"
"let g:javascript_conceal_null                 = "ø"
"let g:javascript_conceal_this                 = "@"
"let g:javascript_conceal_return               = "⇚"
"let g:javascript_conceal_undefined            = "¿"
"let g:javascript_conceal_NaN                  = "ℕ"
"let g:javascript_conceal_prototype            = "¶"
"let g:javascript_conceal_static               = "•"
"let g:javascript_conceal_super                = "Ω"
"let g:javascript_conceal_arrow_function       = "⇒"
"let g:javascript_conceal_noarg_arrow_function = "🞅"
"let g:javascript_conceal_underscore_arrow_function = "🞅"


" Auto-pairs
" alt-b
" alt-n
let g:AutoPairsFlyMode = 1

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeDirArrowExpandable = '➢'
let g:NERDTreeDirArrowCollapsible = '⇣'


" Temas
set termguicolors

let g:everforest_background = 'hard'
let g:everforest_enable_italic = 1
let g:everforest_cursor = 'aqua'
"let g:everforest_transparent_background = 1

colorscheme everforest

" indentLine
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
"let g:indentLine_enabled = 0

" shortcuts
let mapleader=' '
nmap <leader>e <Plug>(easymotion-s2)
nmap <leader>n :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
map <C-a> <esc>ggVG<CR>
noremap <leader>gs :CocSearch
:imap jj <Esc>
":imap <leader><leader> <Esc>
"nmap <leader>f :FZF<CR>

