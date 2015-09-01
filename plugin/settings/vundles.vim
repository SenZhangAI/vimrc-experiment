set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
let g:vundle_default_git_proto = 'git'
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" # Plugins Beginning #
Plugin 'VundleVim/Vundle.vim', {'name': 'vundle'}
"Plugin 'L9'
"Plugin 'tomtom/tlib_vim'

" @ Plugin --- [ Style Custom ]
"Plugin 'morhetz/gruvbox'
Plugin 'bling/vim-airline', {'name': 'airline'}
Plugin 'powerline/fonts', {'name': 'powerline_fonts'}
"Plugin 'terryma/vim-smooth-scroll'
"Plugin 'ap/vim-buftabline'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'flazz/vim-colorschemes', {'name': 'colorschemes'}
Plugin 'altercation/vim-colors-solarized'

" @ Plugin --- [ Source Code Cheacker ]
"Plugin 'sjl/gundo.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'


" NERDTree Plugins Collections
Plugin 'scrooloose/nerdtree'
"Plugin 'ryanoasis/vim-webdevicons'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'jistr/vim-nerdtree-tabs', {'name': 'nerdtree-tabs'}
Plugin 'scrooloose/nerdcommenter'
"Plugin 'danro/rename.vim'

" @ Plugin --- [ |Google| Geeks Plugin ]
Plugin 'terryma/vim-multiple-cursors', {'name': 'multiple-cursors'}
"Plugin 'marijnh/tern_for_vim'
"Plugin 'Valloric/ListToggle'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Shougo/neocomplcache.vim'
"Plugin 'fatih/vim-go'


" @ Plugin --- [ Auto Complete ]
"Plugin 'Raimondi/delimitMate'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'mattn/emmet-vim'
"Plugin 'c9s/perlomni.vim'
"Plugin 'gcmt/wildfire.vim'
"Plugin 'tpope/vim-abolish'
"Plugin 'tpope/vim-surround'
Plugin 'garbas/vim-snipmate', {'name': 'snipmate'}


" @ Plugin --- [ CWD File Buffer Manager ]
"Plugin 'Shougo/neomru.vim'
"Plugin 'Shougo/unite.vim'
"Plugin 'Shougo/unite-outline'
"Plugin 'Shougo/unite-session'
"Plugin 'Shougo/vimfiler.vim'
"Plugin 'tsukkee/unite-tag'
"Plugin 'thinca/vim-unite-history'
"Plugin 'yegappan/mru'


" @ Plugin --- [ Git && Shell Tools ]
"Plugin 'Shougo/vimproc.vim'
"Plugin 'Shougo/vimshell.vim'
Plugin 'tpope/vim-fugitive', {'name': 'fugitive'}
"Plugin 'mattn/webapi-vim'
"Plugin 'airblade/vim-gitgutter'


" @ Plugin --- [ Code BAT Sreach ]
Plugin 'rking/ag.vim'
"Plugin 'thinca/vim-quickrun'
"Plugin 'dyng/ctrlsf.vim'
"Plugin 'mklabs/grunt.vim'
Plugin 'kien/ctrlp.vim', {'name': 'ctrlp'}


" @ Plugin --- [ Web Development Tools ]
"Plugin 'pangloss/vim-javascript'
"Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'othree/yajs.vim'
"Plugin 'chrisbra/Colorizer'
"Plugin 'skammer/vim-css-color'
"Plugin 'ap/vim-css-color'
"Plugin 'hail2u/vim-css3-syntax'
"Plugin 'othree/html5.vim'
"Plugin 'othree/html5-syntax.vim'
"Plugin 'groenewege/vim-less'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'elzr/vim-json'
"Plugin 'StanAngeloff/php.vim'

" @ Plugin --- [ ADV Program Language ]
Plugin 'octol/vim-cpp-enhanced-highlight'

" @ Plugin --- [ Code Format ]
"Plugin 'godlygeek/tabular'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
