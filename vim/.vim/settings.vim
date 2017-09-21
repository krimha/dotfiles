" Standard settings. Otherwise known as sane defaults

filetype plugin indent on
syntax on
set guioptions-=m " Remove menu bar
set guioptions-=T " Remove toolbar
set guioptions-=r " Remove right-hand scrollbar
set guioptions-=L " Remove left-hand scroll bar

" Sets how many lies of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set 7 lines to the cursor when moving vertically using j/k
set so=7

" Turn on the Wild meny
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
	set wildignore+=.git\*,.hg\*,.svn\*
else
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif


" Always show current position
set ruler

" Line numbers
set number

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace to act as it should do
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching and try to be smart
set ignorecase
set smartcase
" set hlsearch
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" Time for flashing when matching brackets
    set mat=2

set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

set ai " Auto indent 
set si " Smart indent
set wrap " Wrap lines

" set colorscheme it gvim
if has("gui_running")
    colorscheme solarized
endif
colorscheme wal

" Always display statusline
set laststatus=2
