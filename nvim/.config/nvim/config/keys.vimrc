" Keymaps
let mapleader=","       " Leader is comma

" Fold toggle
nnoremap <space> za     

" Movement
nnoremap j gj
nnoremap k gk

" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Session save
nnoremap <leader>s :mksession<CR>

" Make p in Visual mode replace the selected text with the yank register
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" :W sudo saves the file
command W w !sudo tee % > /dev/null

" dispatch / ctags
nmap <F7>  :UpdateTags<CR>
nmap <F8>  :TagbarToggle<CR>
nmap <F9>  :Make<CR>
nmap <F10> :Make RunRelease<CR>

" Completion with tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" NERD Tree
map <C-n> :NERDTreeToggle<CR>

" Ale
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

" fzf
nnoremap <c-p> :Files<cr>
