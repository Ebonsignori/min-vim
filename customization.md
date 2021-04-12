I'll walk through each file and show where you can go to remove/add things I've included.

## Init.vim

This is the entry point and loads all the config files that are broken up for simplicity

## Plugins (plugins.vim)
1. Auto-save: auto saves files after any changes made
- Don't want? In plugins.vim remove/comment out line 38:
```
Plug '907th/vim-auto-save'

```
- Remove/comment lines 80-87 (everything under "Autosave plugin config")

2. Nerdtree: Directory tree visualizer you'd get in an IDE. Toggle with Ctrl+b. Modify/create files with "m". Open file in window with "o". Open file in split window pane with "s". 

- Do want? In plugins.vim uncomment these lines:
```
Plug 'scrooloose/nerdtree' |
 \ Plug 'Xuyuanp/nerdtree-git-plugin'

```
- Uncomment lines 117-132 (everything under "Nerdtree Config")

3. Coc: In-line eslint errors, JS errors, and spellchecking. Plus ability to "autofix" eslint errors with `<leader>fm` hotkey.
- Don't want? In plugins.vim remove/comment out lines 54-55:
```
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-eslint', 'coc-tsserver', 'coc-spell-checker']
```
- Remove/comment lines 162-174 (everything under "CoC Config")

4. Ag: fuzzy search within all files not .gitignored or in `node_modules`?

- Uncomment all of the optional stuff under the Fzf config section in plugins.vim
- You may notice you can shortcut `<leader>b` to fuzzy search open buffers.

5. If you want rainbow parens (different colors match different pairs) uncomment `" Plug 'luochen1990/rainbow'`  in plugins.vim and add line `let g:rainbow_active = 1` somewhere, anywhere really.

## Config (config.vim)

1. Shared clipboard with system
- Don't want? In config.vim comment/remove line 8
```
set clipboard^=unnamed,unnamedplus
```
- Remove lines 29 to 61 under comment "Use system clipboard as default"

## Custom shortcuts (keys.vim)

1. Navigate between window panes. For instance if you toggle a split window with `Ctrl+w, s` (close with `Ctrl+w, c`) you can switch between them with ctrl + h/j/k/l. This may conflict with tmux setups and can be altered in keys.vim

2. Using shift + j/k to jump up and down in file. This isn't very vim-like, but I like it. Will feel intuitive after moving up and down with j/k

3. Indent visually selected blocks or current line with `<` / `>`. You can comment out 16-21 in keys.vim if you don't like this.

4. `<leader>fm` will autoformat .json and terraform files

## Theme (theme.vim)

1. You can replace this with a different theme, or uncomment everything after loading the termguicolors to see how your default theme looks and works without it.
