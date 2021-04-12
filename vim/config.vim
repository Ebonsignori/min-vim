" Show line numbers 
set number 
" Syntax highlighting
set encoding=utf-8
set shiftwidth=2
set tabstop=2
" Clipboard sharing
set clipboard^=unnamed,unnamedplus
" Use spaces instead of tab chars
set expandtab
set laststatus=2
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Mouse
set mouse=n
" Smart case searching
set ignorecase
set smartcase
" Don't hide quotes and symbols
set conceallevel=0

" For filetype-specific configs (see keys.vim)
filetype plugin on

" Use system clipboard as default
if has('unix')
  let s:uname = system("echo -n \"$(uname)\"")
  if !v:shell_error && s:uname == "Linux"
    " Assume Linux
    let g:clipboard = {
      \ 'name': 'xsel',
      \ 'copy': {
      \     '+': 'xsel -ib',
      \     '*': 'xsel -ip'
      \ },
      \ 'paste': {
      \     '+': 'xsel -ob',
      \     '*': 'xsel -op'
      \ },
      \ 'cache_enabled': 1
      \ }
  else
    " Assume Mac
    let g:clipboard = {
      \ 'name': 'pbcopypaste',
      \ 'copy': {
      \     '+': 'pbcopy',
      \     '*': 'pbcopy'
      \ },
      \ 'paste': {
      \     '+': 'pbpaste',
      \     '*': 'pbpaste'
      \ },
      \ 'cache_enabled': 1
      \ }
  endif
endif

"
" OPTIONAL: Uncomment if you like this behavior
"
" Hack to make undo only undo one word at a time
" inoremap <Space> <Space><C-g>u

" Highlight column
" set cursorcolumn
