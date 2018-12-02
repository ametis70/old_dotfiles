" Indent guides
hi IndentGuidesOdd  ctermbg=8
hi IndentGuidesEven ctermbg=8
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" Deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('smart_case', v:true)

call deoplete#custom#option('sources', {
		  \ '_': ['syntax', 'around', 'buffer', 'file', 'include', 'member'],
      \ 'vim': ['vim'],
      \ 'javascript': ['ternjs']
      \})

" Tern
"let g:deoplete#sources#ternjs#filetypes = [
"      \ 'javascript',
"      \ 'javascript.jsx',
"      \ 'jsx',
"      \ 'vue',
"      \ ]
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1


" Clang
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'

" easy-tags
let g:easytags_async = 1
let g:easytags_always_enabled = 1
let g:easytags_on_cursorhold = 0

" ale
let g:ale_completion_enabled = 0
let g:ale_linters_explicit = 1
let g:ale_linters = {
      \   'cpp': ['clangcheck', 'clangtidy', 'cppcheck'],
      \   'javascript': ['eslint'],
      \   'vim': ['vint'],
      \}

let b:ale_fixers = {
      \ 'javascript': ['eslint']
      \}

" dispatch
" autocmd BufWrite *.cpp :Make!
"
" Goyo
function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Limelight
let g:limelight_conceal_ctermfg = 7

" tern_for_vim
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

