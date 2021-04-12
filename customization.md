# Customizations

## Init.vim

This is the entry point and loads all the config files that are broken up for simplicity

## Plugins.vim

Lists plugins that will be installed with `:PlugInstall` (run anytime you add a new plugin) and their configs.

## coc.vim

The CoC plugin has so much config that it has its own file

## Config.vim

Base vim config and additional configs like "friendly" undo and shared system keyboard.

## Custom shortcuts (keys.vim)

1. Navigate between window panes. For instance if you toggle a split window with `Ctrl+w, s` (close with `Ctrl+w, c`) you can switch between them with ctrl + h/j/k/l. This may conflict with tmux setups and can be altered in keys.vim

2. Using shift + j/k to jump up and down in file. This isn't very vim-like, but I like it. Will feel intuitive after moving up and down with j/k

3. Indent visually selected blocks or current line with `<` / `>`. You can comment out 16-21 in keys.vim if you don't like this.

4. `<leader>fm` will auto-format .json and terraform files

## Tabs.vim

Everything you need to know about tabs is in mappings.md 

## Theme (theme.vim)

You can replace this with a different theme, or uncomment everything after loading the `termguicolors` to see how your default theme looks and works without it.
