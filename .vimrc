" ===============================
" Nathan's Vim Configuration
" ===============================

" ----- Core setup -----
filetype plugin indent on
syntax on

" ----- Tabs & Indentation -----
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cindent

" ----- Interface -----
set number                 " Absolute line numbers
set relativenumber         " Relative for navigation
set cursorline             " Highlight current line
set showmatch              " Highlight matching braces
set ruler                  " Show line/column
set laststatus=2           " Always show status bar
set showcmd                " Display incomplete commands
set wildmenu               " Command-line autocomplete
set scrolloff=8            " Keep context while scrolling
set nowrap                 " Don’t wrap long lines
set title                  " Show file name in terminal title
set confirm                " Ask before quitting unsaved buffers

" ----- Search -----
set ignorecase
set smartcase
set incsearch
set hlsearch

"------Disable Ex mode ----
map Q <Nop>

" Clear search highlight quickly
nnoremap <leader><space> :nohlsearch<CR>

" ----- Clipboard & Mouse -----
set clipboard=unnamedplus  " Share clipboard with system
set mouse=a                " Enable mouse

" ----- Persistent Editing -----
set backupdir=~/.vim/backups//
set undodir=~/.vim/undodir//
set undofile

" ----- Color & UI -----
set background=dark
colorscheme desert

" ----- Window Navigation -----
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ----- Save & Reload Config -----
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :edit $MYVIMRC<CR>

" ----- C Language Support -----
autocmd Filetype c setlocal makeprg=gcc\ %\ -Wall\ -Wextra\ -o\ %:r
autocmd Filetype c nnoremap <F5> :w<CR>:make<CR>:!./%:r<CR>

" ----- DevOps & Config File Settings -----
" YAML and Dockerfiles often use 2 spaces per indent
autocmd FileType yaml,yml,dockerfile,sh,bash,zsh,make setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" Highlight tabs and trailing spaces
set list
set listchars=tab:▸\ ,trail:·

" ----- Quick File Access -----
" F2 = open file explorer (netrw)
nnoremap <F2> :Ex<CR>

" ----- Safety -----
set nobackup
set nowritebackup
set noswapfile
