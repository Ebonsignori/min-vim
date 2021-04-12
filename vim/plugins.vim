" Run ":PlugInstall" to update plugins


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

"
" Add new plugins by their GH repo name here
"
call plug#begin('~/.vim/plugged')
" Theme
Plug 'joshdick/onedark.vim'
" Status bar
Plug 'vim-airline/vim-airline'
" Coffeescript
Plug 'kchmck/vim-coffee-script'
" Terraform format 
Plug 'hashivim/vim-terraform'
" Ctrl+P like file search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Autosave
Plug '907th/vim-auto-save'
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

" Optional if you want linting, code suggestions, and spell checking. Remove
" Coc config section as well
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-eslint', 'coc-tsserver', 'coc-spell-checker']

" Optional - you can comment out and remove these and their corresponding config


" Optional plugins you can uncomment if you want
" Rainbow parens
" Plug 'luochen1990/rainbow'
" Visually show line indents
" Plug 'Yggdroot/indentLine'
" Markdown preview (run with :MarkdownPreview from .md file)
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install' }
" File Explorer
" Plug 'scrooloose/nerdtree' |
"   \ Plug 'Xuyuanp/nerdtree-git-plugin'
" Version control - Optional bc of learning curve
" Plug 'tpope/vim-fugitive'


call plug#end()

"
" Add plugin-specific config here
" 

"
" Autosave plugin config
"
let g:auto_save        = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]
" Set vim setting for autosave too
set autowriteall

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
" Optional: Uncomment all below if you want to use file tree browser
" Don't load built-in browser, netrw
" let loaded_netrwPlugin = 1
" let g:NERDTreeQuitOnOpen = 0
" let g:NERDTreeShowHidden = 1
" let g:NERDTreeMinimalUI = 1
" let g:NERDTreeIgnore = []
" let g:NERDTreeStatusline = ''
" " Toggle
" nnoremap <silent> <C-b> :NERDTreeToggle<CR>
" " Toggle to current file
" nnoremap <silent> <leader><C-b> :NERDTreeFind<CR>
" " Fix to allow OnTabEnter to work
" let g:NERDTreeHijackNetrw = 0


"
" Fzf (see https://github.com/junegunn/fzf.vim)
"
" Ctrl+P like file search
nnoremap <C-p> :FZF<CR>
" Optional: Fzf open buffer search
" nnoremap <leader>b :Buffers<CR>
" Optional: Fzf file search. Requires you install Ag
" nnoremap <leader>ff :Ag<CR>
" Optional if you use Ag for search, ignore .gitignore and node_modules
" command! -nargs=* AgQ call fzf#vim#ag(<q-args>, {'down': '40%', 'options': '-q '.shellescape(<q-args>.' ')})
" command! -bang -nargs=* FzfAg
  " \ call fzf#vim#ag(<q-args>,
  " \                 '--ignore "node_modules"',
  " \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  " \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  " \                 <bang>0)
" let g:fzf_action = {
  " \ 'ctrl-t': 'tab split',
  " \ 'ctrl-s': 'split',
  " \ 'ctrl-v': 'vsplit'
  " \}
" let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
" " Use ctrl+p to nav to previous search when this directory is enabled
" let g:fzf_history_dir = '~/.local/share/fzf-history'


"
" CoC config
"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nnoremap <M-e> <Plug>(coc-diagnostic-info)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Apply AutoFormat on file
nmap <leader>af <Esc>:call CocAction('runCommand', 'eslint.executeAutofix')<CR>
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)



