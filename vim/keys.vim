" Use Ctrl+h/j/k/l to move between split/vsplit panels
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap <C-h> <Esc><C-w>h
inoremap <C-j> <Esc><C-w>j
inoremap <C-k> <Esc><C-w>k
inoremap <C-l> <Esc><C-w>l

" Indent w < and >
nnoremap > :execute "normal! >>_"<CR>
nnoremap < :execute "normal! <<_"<CR>
vnoremap > >gv"
vnoremap < <gv"
xnoremap > >gv"
xnoremap < <gv"

" Save
nnoremap <C-s> :w<CR>

" Auotformat terraform file with <leader>fm
autocmd Filetype terraform nmap <leader>fm :TerraformFmt<CR>
" Autoformat .json file with <leader>fm 
autocmd Filetype json nmap <leader>fm :%!jq<CR>

" Up and down jumps with shift K/J - this feels very intuitive
nnoremap <silent> K <C-u>
nnoremap <silent> J <C-d>

" Move lines up/down
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv
