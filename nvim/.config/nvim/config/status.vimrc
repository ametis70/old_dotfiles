" Statusbar
set laststatus=2
set noshowmode

" Airline / Lightline
" let g:airline_theme='base16'
"let g:airline_theme = 'crayon'
"let g:airline#extensions#ale#enabled = 1

let g:lightline = {
            \ 'colorscheme': 'nord',
            \ 'active': {
            \     'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ],
            \                [ 'percent',  'lineinfo'],
            \                [ 'fileformat', 'fileencoding', 'filetype'] ]
            \  },
            \ 'component_expand': {
            \      'linter_checking': 'lightline#ale#checking',
            \      'linter_warnings': 'lightline#ale#warnings',
            \      'linter_errors': 'lightline#ale#errors',
            \      'linter_ok': 'lightline#ale#ok',
            \ },
            \ 'component.type': {
            \     'linter_checking': 'left',
            \     'linter_warnings': 'warning',
            \     'linter_errors': 'error',
            \     'linter_ok': 'left',
            \ },
            \ }

