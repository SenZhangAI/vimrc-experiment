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


" @ Plugin --- [ Style Custom ]
"Plugin 'godlygeek/csapprox'  " not useful to me, I adjust color by myself
Plugin 'vim-airline/vim-airline', {'name': 'airline'}
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts', {'name': 'powerline_fonts'}
"Plugin 'ap/vim-buftabline'
"Plugin 'flazz/vim-colorschemes', {'name': 'colorschemes'}
Plugin 'morhetz/gruvbox'
Plugin 'Yggdroot/indentLine'
"Plugin 'nathanaelkane/vim-indent-guides'    "another indentLine style
Plugin 'myusuf3/numbers.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'Chiel92/vim-autoformat'
Plugin 'luochen1990/rainbow'
Plugin 'zhaocai/GoldenView.Vim'

" @ Plugin --- [ Source Code Cheacker ]
"Plugin 'sjl/gundo.vim'  "this plugin may slowdown vim in some situation
"Plugin 'ludovicchabant/vim-gutentags' " automatically manage tags, too slow
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'


" NERDTree Plugins Collections
Plugin 'scrooloose/nerdtree'
"Plugin 'ryanoasis/vim-webdevicons'
"Plugin 'Xuyuanp/nerdtree-git-plugin' "this plugin may slowdown vim in some situation
"Plugin 'jistr/vim-nerdtree-tabs', {'name': 'nerdtree-tabs'}
Plugin 'scrooloose/nerdcommenter'
"Plugin 'danro/rename.vim'


" @ Plugin --- [ Auto Complete ]
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'  " replaced by my forked vim-snippets
Plugin 'SenZhangAI/vim-snippets'
Plugin 'mattn/emmet-vim'     " this is use for fast HTML/CSS coding
"Plugin 'c9s/perlomni.vim'    " for perl
Plugin 'gcmt/wildfire.vim'
"Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround', {'name': 'surround'}

"snipmate is depend on vim-addon-mw-utils and tlib_vim
"Plugin 'marcweber/vim-addon-mw-utils', {'name': 'addon-mw-utils'}
"Plugin 'tomtom/tlib_vim', {'name': 'tlib'}
"Plugin 'garbas/vim-snipmate', {'name': 'snipmate'}


" @ Plugin --- [ CWD File Buffer Manager ]
"Plugin 'Shougo/unite.vim'
"Plugin 'Shougo/unite-outline'
"Plugin 'Shougo/unite-session'
"Plugin 'Shougo/vimfiler.vim'
"Plugin 'tsukkee/unite-tag'
"Plugin 'thinca/vim-unite-history'


" @ Plugin --- [ Git && Shell Tools ]
"Plugin 'Shougo/vimshell.vim'
Plugin 'tpope/vim-fugitive', {'name': 'fugitive'}
Plugin 'gregsexton/gitv'
"Plugin 'mattn/webapi-vim'
Plugin 'airblade/vim-gitgutter', {'name': 'gitgutter'}


" @ Plugin --- [ Code BAT Search ]
Plugin 'rking/ag.vim'
Plugin 'thinca/vim-quickrun'
Plugin 'dyng/ctrlsf.vim'
"Plugin 'mklabs/grunt.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dkprice/vim-easygrep', {'name': 'easygrep'}


" @ Plugin --- [ Web Development Tools ]
"Plugin 'pangloss/vim-javascript'
"Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'othree/yajs.vim'
"Plugin 'chrisbra/Colorizer'
Plugin 'ap/vim-css-color'
"Plugin 'hail2u/vim-css3-syntax'
"Plugin 'othree/html5.vim'
"Plugin 'othree/html5-syntax.vim'
"Plugin 'groenewege/vim-less'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'elzr/vim-json'
"Plugin 'StanAngeloff/php.vim'
"Plugin 'tpope/vim-rails', {'name': 'rails'}
"Plugin 'vim-ruby/vim-ruby', {'name': 'ruby'}
"Plugin 'cakebaker/scss-syntax.vim'


" @ Plugin --- [ Code Format ]
" align tool, better than tabular
Plugin 'junegunn/vim-easy-align', {'name': 'easy-align'}


" @ Plugin --- [ ADV Program Language ]
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'octol/vim-cpp-enhanced-highlight', {'name': 'cpp-enhanced-highlight'}
Plugin 'nacitar/a.vim'
" markdown may need to install tabular first, but I use easy-align
Plugin 'plasticboy/vim-markdown', {'name': 'markdown'}
Plugin 'asins/vimcdoc'
Plugin 'wlangstroth/vim-racket'
Plugin 'vimwiki/vimwiki'


" @ Plugin --- [ |Google| Geeks Plugin ]
Plugin 'terryma/vim-multiple-cursors', {'name': 'multiple-cursors'}
"Plugin 'marijnh/tern_for_vim'
"Plugin 'Valloric/ListToggle'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'

"Below Plugin vim-marching can combined with neocomplete, with need vimproc
Plugin 'Shougo/vimproc.vim'
Plugin 'osyo-manga/vim-marching'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-unimpaired', {'name': 'unimpaired'}
Plugin 'tpope/vim-repeat', {'name': 'repeat'}
"Plugin 'itchyny/calendar.vim'  " A calender application for Vim
Plugin 'easymotion/vim-easymotion'
"Plugin 'unblevable/quick-scope'  " quick jump for f/F/t/T
Plugin 'osyo-manga/vim-over'     " preview the result for commandline


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
