set nocompatible
filetype off

" ----------------------------------------------------------------------------
" Vundle
" ----------------------------------------------------------------------------
set rtp+=~/.config/vim/bundle/vundle
let vundlepath='~/.config/vim/bundle'
call vundle#rc(vundlepath)
Bundle 'gmarik/vundle'

Bundle 'marcweber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'mbbill/undotree'
Bundle 'mhinz/vim-signify'
Bundle 'tpope/vim-abolish.git'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'mattn/gist-vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'tpope/vim-markdown'
Bundle 'ervandew/supertab'
Bundle 'jimenezrick/vimerl'
Bundle 'edkolev/erlang-motions.vim'
Bundle 'elixir-lang/vim-elixir'

" ----------------------------------------------------------------------------
" Syntax highlighting
" ----------------------------------------------------------------------------
syntax on
filetype plugin on
filetype plugin indent on

" ----------------------------------------------------------------------------
" Color theme
" ----------------------------------------------------------------------------
set background=dark
color solarized

" ----------------------------------------------------------------------------
" Searching
" ----------------------------------------------------------------------------
set hlsearch
set incsearch
set ignorecase
set smartcase

" ----------------------------------------------------------------------------
" Tabs and indenting
" ----------------------------------------------------------------------------
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent

" ----------------------------------------------------------------------------
" UI
" ----------------------------------------------------------------------------
set laststatus=2
set ruler
set showcmd

set showmode
set hidden

set previewheight=20
set pumheight=20

set wildmenu
set completeopt=menu,longest,menuone

set cursorline

set number
set relativenumber
set nowrap
set so=10

set mouse=nicr

set ttyfast

" ----------------------------------------------------------------------------
" Clipboard
" ----------------------------------------------------------------------------
if has('unnamedplus')
    set clipboard=unnamedplus
else
    set clipboard=unnamed
endif

" ----------------------------------------------------------------------------
" Folding
" ----------------------------------------------------------------------------
set nofoldenable
set foldnestmax=3

" ----------------------------------------------------------------------------
" Files
" ----------------------------------------------------------------------------
set encoding=utf-8
set nobackup
set nowritebackup
set modeline
set noswapfile
set undofile
set undodir=~/.config/vim/.undo
"set wildignore+=*.mp3,*.MP3,*.ogg,*.mp4,*.wav,*.avi,*.AVI,*.wmv,*.m4a,*.mkv,*.png.*.jpg,*.jpeg,*.pdf

" ----------------------------------------------------------------------------
" Mappings
" ----------------------------------------------------------------------------

let mapleader=","

" indent code
nnoremap <leader>i gg=G<C-o><C-o>

" Goto "definition"
map <Leader>d <C-]>

" Toggle paste mode with F2
nnoremap <F12> :set invpaste paste?<CR>

" Move between windows with CRTL+{hjkl}
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" Buffer movement
noremap <silent> H :bp<CR>
noremap <silent> L :bn<CR>

nnoremap <c-s> :w<CR>

" Resize Windows with arrow keys
noremap <up> 2<c-w>+
noremap <down> 2<c-w>-
noremap <left> 3<c-w><
noremap <right> 3<c-w>>

" Surround current char with spaces
noremap S i <esc>2li <esc>h

" Folding
nnoremap <space> za
vnoremap <space> zf

" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

"nnoremap n nzz
"nnoremap N Nzz

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" Splits
nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>sh :split<CR>

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q mpgqap`p

" Make Y consistent with C and D
nnoremap Y y$

" Fugitive maps
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gd :Gdiff<CR>
noremap <Leader>gw :Gwrite<CR>
noremap <Leader>gr :Gread<CR>

" Toggle search highlighting
nnoremap <Leader><Space> :noh<CR>

nmap <F3> :NERDTreeToggle<CR>

nnoremap <C-t> :CtrlPBuffer<CR>
nnoremap <C-g> :CtrlPFunky<CR>

imap jj <Esc>

" ----------------------------------------------------------------------------
" Plugin settings
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" Commands
" ----------------------------------------------------------------------------

" use :W to force saving a file
com! W :w !sudo tee %
