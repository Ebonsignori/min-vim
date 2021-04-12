# Min-vim setup

1. Install [nvim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
2. Alias vi/vim to nvim in zshrc/bashrc
```
alias vi='nvim'
alias v='nvim'
```
3. Install [ag](https://github.com/ggreer/the_silver_searcher#installing) if you want to use it for searching
4. Copy over vim config from this repo to your system's vim config:
```
cp -fR ./vim/ ~/.config/nvim/
```
5. Start vim with `vi` or `vim`!


Note (possibly obvious): This repo is the source of truth (for now), if you make changes and want to test out your updated config, remember to `cp -fR ./vim/ ~/.config/nvim/` from here.

# Mappings

For a reference sheet of basics, the included plugins, and custom keybindings see [mappings.md](./mappings.md)

# Customize

To get an overview of what is here and a place to check when you run into something you don't want and think "I don't want this junk". Checkout [customization.md](./customization.md) and there will likely be steps on how to remove it. Such as auto-saving, spellcheck, eslint, JS intellisense, shared clipboard, and window navigation. 

There are also a few things that you can add like searching with Ag, file tree browser, rainbow parens, version control, markdown preview, and a more intuitive "undo".

