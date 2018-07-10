silent! if plug#begin(get(g:, 'bundle_home', '~/.vim/bundles'))

" @ Plugin --- [ Style Custom ]
"Plugin 'godlygeek/csapprox'  " not useful to me, I adjust color by myself
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'ap/vim-buftabline'
"Plug 'flazz/vim-colorschemes', {'name': 'colorschemes'}
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
"Plug 'nathanaelkane/vim-indent-guides'    "another indentLine style
Plug 'myusuf3/numbers.vim'
Plug 'kshenoy/vim-signature'
Plug 'Chiel92/vim-autoformat'
Plug 'luochen1990/rainbow'
Plug 'zhaocai/GoldenView.Vim'

" @ Plugin --- [ Source Code Cheacker ]
"Plug 'sjl/gundo.vim'  "this plugin may slowdown vim in some situation
"Plug 'ludovicchabant/vim-gutentags' " automatically manage tags, too slow
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'


" NERDTree Plugins Collections
Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-webdevicons'
"Plug 'Xuyuanp/nerdtree-git-plugin' "this plugin may slowdown vim in some situation
"Plug 'jistr/vim-nerdtree-tabs', {'name': 'nerdtree-tabs'}
Plug 'scrooloose/nerdcommenter'
"Plug 'danro/rename.vim'


" @ Plugin --- [ Auto Complete ]
Plug 'Raimondi/delimitMate'
Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'  " replaced by my forked vim-snippets
Plug 'SenZhangAI/vim-snippets'
Plug 'mattn/emmet-vim'      " this is use for fast HTML/CSS coding
"Plug 'c9s/perlomni.vim'    " for perl
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-abolish'    " better substitue and coercion
Plug 'tpope/vim-surround'
Plug 'tommcdo/vim-exchange'

"snipmate is depend on vim-addon-mw-utils and tlib_vim
"Plug 'marcweber/vim-addon-mw-utils', {'name': 'addon-mw-utils'}
"Plug 'tomtom/tlib_vim', {'name': 'tlib'}
"Plug 'garbas/vim-snipmate', {'name': 'snipmate'}


" @ Plugin --- [ CWD File Buffer Manager ]
"Plug 'Shougo/unite.vim'
"Plug 'Shougo/unite-outline'
"Plug 'Shougo/unite-session'
"Plug 'Shougo/vimfiler.vim'
"Plug 'tsukkee/unite-tag'
"Plug 'thinca/vim-unite-history'


" @ Plugin --- [ Git && Shell Tools ]
"Plug 'Shougo/vimshell.vim'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
"Plug 'mattn/webapi-vim'
Plug 'airblade/vim-gitgutter'


" @ Plugin --- [ Code BAT Search ]
Plug 'rking/ag.vim'
Plug 'thinca/vim-quickrun'
Plug 'dyng/ctrlsf.vim'
"Plug 'mklabs/grunt.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dkprice/vim-easygrep'


" @ Plugin --- [ Web Development Tools ]
"Plug 'pangloss/vim-javascript'
"Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'othree/yajs.vim'
"Plug 'chrisbra/Colorizer'
Plug 'ap/vim-css-color'
"Plug 'hail2u/vim-css3-syntax'
"Plug 'othree/html5.vim'
"Plug 'othree/html5-syntax.vim'
"Plug 'groenewege/vim-less'
"Plug 'digitaltoad/vim-jade'
"Plug 'kchmck/vim-coffee-script'
"Plug 'elzr/vim-json'
"Plug 'StanAngeloff/php.vim'
"Plug 'tpope/vim-rails', {'name': 'rails'}
"Plug 'vim-ruby/vim-ruby', {'name': 'ruby'}
"Plug 'cakebaker/scss-syntax.vim'


" @ Plugin --- [ Code Format ]
" align tool, better than tabular
Plug 'junegunn/vim-easy-align'


" @ Plugin --- [ ADV Program Language ]
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'nacitar/a.vim'
" markdown may need to install tabular first, but I use easy-align
Plug 'plasticboy/vim-markdown'
Plug 'dhruvasagar/vim-table-mode' " use this to edit table
Plug 'asins/vimcdoc'
Plug 'wlangstroth/vim-racket'
Plug 'vimwiki/vimwiki'


" @ Plugin --- [ |Google| Geeks Plugin ]
Plug 'terryma/vim-multiple-cursors'
"Plug 'marijnh/tern_for_vim'
"Plug 'Valloric/ListToggle'
"Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

"Below Plugin vim-marching can combined with neocomplete, with need vimproc
Plug 'Shougo/vimproc.vim'
Plug 'osyo-manga/vim-marching'
Plug 'ervandew/supertab'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
"Plug 'itchyny/calendar.vim'  " A calender application for Vim
Plug 'easymotion/vim-easymotion'
"Plug 'unblevable/quick-scope'  " quick jump for f/F/t/T
Plug 'osyo-manga/vim-over'     " preview the result for commandline

" All of your Plugins must be added before the following line
call plug#end()
endif
