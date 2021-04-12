"
" Tabline config
"
function! Tabline()
  let s = ''
  for i in range(tabpagenr('$'))
    let tab = i + 1
    let winnr = tabpagewinnr(tab)
    let buflist = tabpagebuflist(tab)
    let bufnr = buflist[winnr - 1]
    let bufname = bufname(bufnr)
    let bufmodified = getbufvar(bufnr, "&mod")

    let s .= '%' . tab . 'T'
    let s .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
    let s .= ' ' . tab .':'
    let s .= (bufname != '' ? '['. fnamemodify(bufname, ':t') . '] ' : '[No Name] ')

    if bufmodified
      let s .= '[+] '
    endif
  endfor

  let s .= '%#TabLineFill#'
  if (exists("g:tablineclosebutton"))
    let s .= '%=%999XX'
  endif
  return s
endfunction
set tabline=%!Tabline()


" Shortcuts
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
tnoremap <leader>1 1<C-h> <C-\><C-n>1gt
tnoremap <leader>2 2<C-h> <C-\><C-n>2gt
tnoremap <leader>3 3<C-h> <C-\><C-n>3gt
tnoremap <leader>4 4<C-h> <C-\><C-n>4gt
tnoremap <leader>5 5<C-h> <C-\><C-n>5gt
tnoremap <leader>6 6<C-h> <C-\><C-n>6gt
tnoremap <leader>7 7<C-h> <C-\><C-n>7gt
tnoremap <leader>8 8<C-h> <C-\><C-n>8gt
tnoremap <leader>9 9<C-h> <C-\><C-n>9gt
tnoremap <leader>0 <C-h> <C-\><C-n>:tablast<CR>

" Close tab
nnoremap <leader>c :tabc<CR>
" Open tab
nnoremap <leader>o :tabo<CR>

