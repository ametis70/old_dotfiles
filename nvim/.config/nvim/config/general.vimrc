let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'
" Syntax
filetype plugin indent on
let g:polyglot_disabled = ['js', 'latex']
syntax on

" Colorscheme
let base16colorspace=256
colorscheme base16-default-dark

" Tabs and Identation
set expandtab
set copyindent
set preserveindent
set softtabstop=2
set shiftwidth=2
set tabstop=2

" set list
" set lcs+=space:·

" Essentials
set encoding=utf-8      " Set encoding
set ffs=unix,dos,mac
set title titlestring=  " Change the terminal's title
set number              " Show line numbers
set relativenumber      " Show line numbers
set cursorline          " Highlight current line
set showcmd             " Show command in bottom bar
set wildmenu            " Visual autocomplete for command menu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip        " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe    " Windows
set timeoutlen=1000 ttimeoutlen=0 " No timeout before keypresses
set scrolloff=10

set lazyredraw          " Redraw only when we need to.
set showmatch           " Highlight matching [{()}]

" History
set history=1000        " Remember more commands and search history
set undolevels=1000     " Use many muchos levels of undo

" Search
set incsearch           " Search as characters are entered
set hlsearch            " Highlight matches
set ignorecase          " Ignore case when searching
set smartcase           " When searching try to be smart about cases


" Folding
set foldenable          " Enable folding
set foldlevelstart=99   " Fold some things by default
set foldcolumn=2        " Add a fold column
" set foldmethod=indent
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo


" Mouse support
set mouse=a

" Backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup



