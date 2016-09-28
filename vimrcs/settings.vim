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
"set foldmethod=manual
"set nofoldenable
set foldenable
set foldmethod=indent
set foldlevel=20
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
set key=                              " disable encryption
set synmaxcol=128
"set viminfo=                         " disable .viminfo file
set viminfo^=%                              " Remember info about open buffers on close
set ttyfast                           " send more chars while redrawing
set lazyredraw
"set listchars=tab:>-,trail:·,eol:¬,extends:❯,precedes:❮
set listchars=tab:^-,trail:·,eol:$,extends:>,precedes:<

" when quit vim，content will show on screen
set t_ti= t_te=

" fix the bug when use ctrl+m for multicursor，
"set selection=inclusive
set selectmode=mouse,key
" but selecting=inclusive will influent ctrl+v's behavior to include the char under cursor
set selection=exclusive

set nobackup                          " no *~ backup files
"set noswapfile
set nowritebackup
"copyindent may cause bad format
"set copyindent                        " copy the previous indentation on autoindenting
set hlsearch                          " search highlighting
set incsearch                         " incremental search
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
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1,euc-jp,euc-kr,utf-bom,iso8859-1,utf-16le
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" ignores
set wildignore+=*.o,*.obj,*.pyc,*.exe,*.out,*.dll,*.so  " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico                 " image format
set wildignore+=*.swf,*.fla                             " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv                 " media format
set wildignore+=*.tar,*.gz,*.zip,*.rar,*.bz2            " compressed file
set wildignore+=*.git*,*.hg*,*.svn*                     " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store,*.bak
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.core

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
autocmd FileType c,cpp,java setlocal formatoptions+=ro
"C/C++ format settings
"astyle formater is much better, for example: +N,(N,and insert space between operator etc.
"autocmd FileType c,cpp,cc setlocal comments=sr:/*,mb:*,el:*/,://
autocmd FileType c,cpp,cc setlocal cindent cino=:0,l1,g0,t0,+2s,cs,C1,(s,U1,k2s,m1,)50,*200

" for Indentation set to be 2 to get faster
autocmd FileType ruby,javascript,html,xhtml,css,xml,xslt
      \ setlocal tabstop=2 shiftwidth=2 softtabstop=2 autoindent

" two space indentation for some files
autocmd FileType zsh,sh,vim,lua,nginx setlocal shiftwidth=2 softtabstop=2

" MAKEFILE and asm should use tab, not spaces
autocmd FileType make,asm setlocal noexpandtab shiftwidth=8 softtabstop=0

" set autosave
set swapfile
autocmd FocusLost * silent! wa
autocmd InsertLeave * silent! wa

" set cursor to last position when reopen
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" 设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline
