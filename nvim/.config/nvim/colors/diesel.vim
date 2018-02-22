"https://github.com/kori/vim-diesel/blob/master/colors/diesel.vim
" vim-diesel

set background=light
let g:colors_name="diesel"

" Cursor
hi Cursor       ctermfg=8

" Code
hi Function     ctermfg=6
hi Statement    ctermfg=3
hi Normal       ctermfg=none
hi Comment      ctermfg=0    cterm=italic
hi Folded       ctermfg=8    ctermbg=none
hi FoldColumn                ctermbg=none
hi NonText      ctermfg=0
hi SpecialKey   ctermfg=0

" Spell
hi SpellBad     ctermfg=9    ctermbg=none

" Highlight
hi Search       ctermfg=3   ctermbg=none
hi Visual       ctermfg=0
hi MatchParen   ctermfg=0   ctermbg=none

" Lines
hi CursorLine   cterm=none
hi CursorLineNr ctermfg=8
hi LineNr       ctermfg=0

" Splits
hi SignColumn   ctermbg=none
hi VertSplit    ctermfg=8 cterm=none

" Status line / related
hi StatusLine   ctermfg=8    ctermbg=none    cterm=bold
hi StatusLineNC ctermfg=0
hi WildMenu     ctermfg=14   ctermbg=none

" Tabs
hi TabLine      ctermfg=none ctermbg=none cterm=none
hi TabLineFill  ctermfg=none ctermbg=none cterm=none
hi TabLineFill  ctermfg=none ctermbg=none cterm=none
hi TabLineSel   ctermfg=15   ctermbg=0    cterm=none

" Vimdiff
hi DiffAdd      ctermfg=14   ctermbg=none
hi DiffChange   ctermfg=12   ctermbg=none
hi DiffDelete   ctermfg=10   ctermbg=none
hi DiffText     ctermfg=9    ctermbg=none
