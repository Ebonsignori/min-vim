if (has("termguicolors"))
  set termguicolors
endif

" Custom theme overrides to be called before "colorscheme" cmd
if (has("autocmd"))
  echo "here"
  augroup colorextend
    autocmd!
    let s:comment_color = {"gui": "#5c7069", "cterm": "235", "cterm16": "0" }
    " Change comment color so cursorline doesn't drown them out 
    autocmd ColorScheme * call onedark#set_highlight("Comment", { "fg": s:comment_color, "gui": "italic", "cterm": "italic" })
  augroup END
endif

" Theme
colorscheme onedark
let g:airline_theme='onedark'
syntax on
set background=dark

" I can't get this to turn off, so might as well put it here to show its on
set cursorline

" Change color of git diff
highlight DiffChange ctermfg=145 ctermbg=235
highlight DiffText ctermfg=Black ctermbg=114
