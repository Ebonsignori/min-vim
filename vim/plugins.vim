"setup vim-plug {{{

  "Note: install vim-plug if not present
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
  endif

  "Note: Skip initialization for vim-tiny or vim-small.
  if !1 | finish | endif
  if has('vim_starting')
    set nocompatible               " Be iMproved
    " Required:
    call plug#begin()
  endif

"}}}

" Above code sets up plugin manager, vim-plug the first time you start vim.

" Run ":PlugInstall" to update plugins

"
" Add new plugins by their GH repo name here
"
call plug#begin('~/.vim/plugged')
" Theme
Plug 'joshdick/onedark.vim'
" Status bar
Plug 'vim-airline/vim-airline'
" Tab rename
Plug 'gcmt/taboo.vim'
" File Explorer
Plug 'scrooloose/nerdtree' |
  \ Plug 'Xuyuanp/nerdtree-git-plugin'
" Ctrl+P like file search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" IDE-like search all
Plug 'dyng/ctrlsf.vim'
" Word coersion (e.g.) to snake_case
Plug 'tpope/vim-abolish'
" Surround (e.g.) word -> "word"
Plug 'tpope/vim-surround'
" Support "." repeat for vim-surround 
Plug 'tpope/vim-repeat'
" Smart comment/uncomment
Plug 'preservim/nerdcommenter'
" Git changes next to line numbers
Plug 'airblade/vim-gitgutter'
" Coc adds LSP for JavaScript and more
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-eslint', 'coc-tsserver', 'coc-spell-checker', 'coc-prettier']
" Coffeescript
Plug 'kchmck/vim-coffee-script'
" Terraform format 
Plug 'hashivim/vim-terraform'

" Optional - you can comment out to add these
"
" Rainbow parens
" Plug 'luochen1990/rainbow'
" Markdown preview (run with :MarkdownPreview from .md file)
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install' }

" Optional - if you don't want this, comment it out and run :PlugClean
" Version control
Plug 'tpope/vim-fugitive'


call plug#end()

"
" Add plugin-specific config below here
" 

"
" NERDCommenter config
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Keybindings
let g:NERDCreateDefaultMappings = 0
" inoremap <leader>c <C-o>:call NERDComment(0,"toggle")<C-m>
vnoremap <leader>/ :call NERDComment(0,"toggle")<CR>
nnoremap <leader>/ :call NERDComment(0,"toggle")<CR>

"
" vim-terraform config
"
let g:terraform_align=0
let g:terraform_fmt_on_save=0

"
" Vim-GitGutter
"
" Jump to next / previous change in git-tracked file
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

"
" Nerdtree Config
"
" Don't load built-in browser, netrw
let loaded_netrwPlugin = 1
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
" Toggle to current file
nnoremap <silent> <leader><C-b> :NERDTreeFind<CR>
" Fix to allow OnTabEnter to work
let g:NERDTreeHijackNetrw = 0


"
" Fzf (see https://github.com/junegunn/fzf.vim)
"
" Ctrl+P like file search
nnoremap <C-p> :FZF<CR>
" Fzf open buffer search
nnoremap <leader>b :Buffers<CR>
" Fzf file search. Requires you install Ag
nnoremap <leader>ff :Ag<CR>
" Optional if you use Ag for search, ignore .gitignore and node_modules
command! -nargs=* AgQ call fzf#vim#ag(<q-args>, {'down': '40%', 'options': '-q '.shellescape(<q-args>.' ')})
command! -bang -nargs=* FzfAg
  \ call fzf#vim#ag(<q-args>,
  \                 '--ignore "node_modules"',
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
" Use ctrl+p to nav to previous search when this directory is enabled
let g:fzf_history_dir = '~/.local/share/fzf-history'

"
" ctrlsf config
"
let g:ctrlsf_confirm_save = 0
nmap <leader>fa <Plug>CtrlSFPrompt
vmap <leader>fa <Plug>CtrlSFVwordPath

"
" Fugitive (git)
"
nnoremap <leader>gg :G<CR> <bar> <C-W>T 
nnoremap ,gg <Esc> <Bar> :G<CR> <Bar> :resize 15<CR>
" Git diff on current file
nnoremap <leader>gd :Gdiff :0<CR>
nnoremap <leader>gdm :Gdiff master<CR>
