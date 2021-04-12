# Min-vim setup

1. Install [nvim](https://github.com/neovim/neovim/wiki/Installing-Neovim) for your system
2. Alias vim to nvim in zshrc/bashrc
```
alias vi='nvim'
alias v='nvim'
```
3. Install [ag](https://github.com/ggreer/the_silver_searcher#installing) if you want to use it for searching
4. Install `xsel` for linux (on Ubuntu I can just `sudo apt-get install -y xsel`)
5. Copy over vim config from this repo to your system's vim config dir:
```
cp -fR ./vim/ ~/.config/nvim/
```
6. Start vim with `vi` or `vi filename.ext`
7. Run `:PlugInstall`
8. Reference keybindings in [mappings.md](./mappings.md) and customizations in [customization.md](./customization.md)
9. Haz fun

Note (possibly obvious): This repo is the source of truth until you grow out of it, if you make changes and want to test out your updated config, remember to `cp -fR ./vim/ ~/.config/nvim/` from here.

# Mappings

For a reference sheet of basics, the included plugins, and custom keybindings see [mappings.md](./mappings.md)

# Customize


When you want to start tweaking your vim config, this is a reference to what is there and may serve as an entry point when you run into something you don't want and think "I don't want this junk".

[customization.md](./customization.md)

There are also a few misc things that that are commented out that you can add like rainbow parens and markdown preview.

