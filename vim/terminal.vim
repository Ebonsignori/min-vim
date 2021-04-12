"
" Terminal Config
"

" Open terminal in split IDE-like way
nnoremap <M-t> :split <bar> resize 15 <bar> term<CR>

" Toggle terminal off
tmap <M-t> <Esc><C-w>c

" start terminal in insert mode
autocmd BufWinEnter,WinEnter term://* startinsert

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" Ctrl+w break for terminal
tmap <C-w> <Esc><C-w>
tmap <C-b> <Esc><C-b>

