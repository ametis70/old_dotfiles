" Vim mode
set nocompatible

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

"Plug 'joshdick/onedark.vim'
"Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'NerdyPepper/agila.vim' 
Plug 'chriskempson/base16-vim'
"Plug 'cocopon/iceberg.vim'
Plug 'gioele/vim-autoswap' "Requires wmctrl
Plug 'sheerun/vim-polyglot'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'jparise/vim-graphql'
Plug 'styled-components/vim-styled-components'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/lightline-powerful'
Plug 'Valloric/YouCompleteMe'
" Plug 'ryanoasis/vim-devicons'
Plug 'vim-syntastic/syntastic'
" Plug 'vim-airline/vim-airline'
Plug 'sjl/gundo.vim'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
" Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-commentary'
Plug 'lervag/vimtex'

call plug#end()


" Enable detection, plugins and indenting in one step
filetype plugin indent on

" Syntax highlighting
" set termguicolors
let g:polyglot_disabled = ['js']
syntax on
let g:nord_italic_comments = 1
" source ~/.local/share/nvim/plugged/agila.vim/agila.vim
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-default-dark 
hi Normal ctermbg=none
hi NonText ctermbg=none

" Tabs and Identation
set expandtab
set copyindent
set preserveindent
set softtabstop=4
set shiftwidth=4
set tabstop=4

" Essentials
let mapleader=","		" Leader is comma
set encoding=utf-8		" Set encoding
set ffs=unix,dos,mac
set title titlestring=	" Change the terminal's title 
set number              " Show line numbers
"set cursorline          " Highlight current line
set showcmd             " Show command in bottom bar
set wildmenu            " Visual autocomplete for command menu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip		" MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe	" Windows

set lazyredraw          " Redraw only when we need to.
set showmatch           " Highlight matching [{()}]

" History
set history=1000		" Remember more commands and search history
set undolevels=1000		" Use many muchos levels of undo

" Search
set incsearch           " Search as characters are entered
set hlsearch            " Highlight matches
set ignorecase			" Ignore case when searching
set smartcase			" When searching try to be smart about cases 
 
" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>	

" Folding
nnoremap <space> za
set foldenable			" Enable folding
set foldlevelstart=99	" Fold some things by default
set foldcolumn=2        " Add a fold column
" set foldmethod=indent  
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

" Movement
nnoremap j gj
nnoremap k gk

" Session save
nnoremap <leader>s :mksession<CR>

" Avoid accidental hits of <F1> while aiming for <Esc>
noremap! <F1> <Esc>

" Make p in Visual mode replace the selected text with the yank register
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" :W sudo saves the file 
command W w !sudo tee % > /dev/null

" Backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Statusbar
set laststatus=2
set noshowmode
let g:lightline = {
	\ 'colorscheme': 'nord',
   	\ 'component_function': {
    	\   'filetype': 'MyFiletype',
      	\   'fileformat': 'MyFileformat',
   	\ }
\ }

" Devicons
"function! MyFiletype()
"""""""""  	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
"endfunction

"function! MyFileformat()
"  	return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
"endfunction
"  			\ }


" Plugins

" Indent guides
hi IndentGuidesOdd  ctermbg=0
hi IndentGuidesEven ctermbg=8
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" Gundo toggle
nnoremap <leader>u :GundoToggle<CR>

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  			\ 'dir':  '\v[\/]\.(git|hg|svn)$',
  			\ 'file': '\v\.(exe|so|dll)$',
  			\ 'link': 'some_bad_symbolic_links',
  			\ }

" NERD Tree
map <C-n> :NERDTreeToggle<CR>

" YouCompleteMe
" https://aur.archlinux.org/packages/vim-youcompleteme-git/

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'eslint_d'

" Autofix entire buffer with eslint_d:
nnoremap <leader>f mF:%!eslint_d --stdin --fix-to-stdout<CR>`F
" Autofix visual selection with eslint_d:
vnoremap <leader>f :!eslint_d --stdin --fix-to-stdout<CR>gv

let g:vimtex_quickfix_mode = 0

" NERDTree git
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" NERDTree file extension file highlight
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name


