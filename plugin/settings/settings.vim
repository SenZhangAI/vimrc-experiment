set nocompatible                      " not compatible with the old-fashion vi mode
set backspace=2                       " allow backspacing over everything in insert nc >kkmode
set history=1000                      " keep 1000 lines of command line history
set undolevels=100
set ruler                             " show the cursor position all the time
set autoread                          " auto read when file is changed from outside
set wrap
set linebreak
set nolist
set hidden
set linespace=0
set cursorline
set nofoldenable
set number
set numberwidth=6
set title
set showmode
set nobomb                            " no BOM(Byte Order Mark)
set nostartofline
set laststatus=2
set clipboard+=unnamed
set splitright                        " always open vertical split window in the right side
set splitbelow                        " always open horizontal split window below
set scrolloff=4                       " start scrolling when n lines away from margins
set switchbuf=useopen
set showtabline=2                     " always show tab
set wildmenu                          " make tab completion for files/buffers act like bash
set wildmode=longest:list,full        " use emacs-style tab completion when selecting files, etc
set key=			                        " disable encryption
set synmaxcol=128
set viminfo=			                    " disable .viminfo file
set ttyfast                           " send more chars while redrawing
set lazyredraw


syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search
syntax enable
set t_Co=256
try
  colorscheme Tomorrow-Night-Bright
catch
endtry

set nobackup                          " no *~ backup files
"set noswapfile
set nowritebackup
set copyindent                        " copy the previous indentation on autoindenting
set ignorecase                        " ignore case when searching
set smartcase
set shortmess=Ia                      " remove splash wording

" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

" file encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

" cursorline switched while focus is switched to another split window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" set tab
set smarttab                          " insert tabs on the start of a line according to
set expandtab                         " replace <TAB> with spaces
set softtabstop=4
set shiftwidth=4
set tabstop=4

" filetype setting
filetype on                           " enable filetype detection
filetype indent on                    " enable filetype-specific indenting
filetype plugin on                    " enable filetype-specific plugins

" for C-like programming where comments have explicit end character,
" if starting a new line in the middle of a comment automatically add comment
" character
autocmd FileType c,cpp,java set formatoptions+=ro
"C/C++ format settings
autocmd FileType c,cpp,cc set cindent comments=sr:/*,mb:*,el:*/,:// cino=:0,g0,p2,t0,+2s,(0,U1,ks

" for Indentation set to be 2 to get faster
autocmd FileType html,xhtml,css,xml,xslt, set shiftwidth=2 softtabstop=2

" two space indentation for some files
autocmd FileType zsh,sh,vim,lua,nginx, set shiftwidth=2 softtabstop=2

" MAKEFILE and asm should use tab, not spaces
autocmd FileType make,asm set noexpandtab shiftwidth=8 softtabstop=0

" set autosave
set swapfile
autocmd FocusLost * silent! wa
autocmd InsertLeave * silent! wa

" set cursor to last position when reopen
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
