call plug#begin('~/.local/share/nvim/plugged')

"Plug 'chriskempson/base16-vim'
"Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
"Plug 'dylanaraps/crayon'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
"Plug 'daviesjamie/vim-base16-lightline'
Plug 'maximbaz/lightline-ale'

Plug 'gioele/vim-autoswap' "Requires wmctrl

Plug 'sheerun/vim-polyglot'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'jparise/vim-graphql'
Plug 'styled-components/vim-styled-components'

" Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-misc'

Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'

Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'lervag/vimtex'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neco-vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'ternjs/tern_for_vim'
Plug 'zchee/deoplete-clang'

Plug 'w0rp/ale'

" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'

Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'

call plug#end()

