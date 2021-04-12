# Mappings

Here is a reference you can use and add to as you learn vim. This really comes in handy at the beginning.

In vim notation,
`<C-w>s` means `Ctrl+w` followed by a quick `s`

i`<leader>` leader is typically `\` though you can remap it. 

`<M>` is the meta key, alt or option

## Basic

Normal mode: `escape`

Insert mode:
- `i`: insert at cursor
- `a`: insert after cursor
- `o`: insert at line below cursor
- `O`: insert at line above cursor
Visual mode: `v` from normal mode. Select blocks of text here.

Command mode: `:` followed by the typed command

Everything afterwards is assumed to be in normal mode. You spend most of your time here. All of it when you aren't actively typing really.


### Nav

- Forward a word: `w`

- Backwards a word: `b`

- End of word: `e`

- End of line: `$`

- Start of line: `0`

- Top of page: `gg`

- Bottom of page: `G`

- To specific line: `<number>G` or type `:<number>, <enter>`

- To next character in line `t<char>`

- To previous character in line: `T<char>`

- To closing brace/paren/bracket: `%`

- Back/Fwd to prev/next location: `<C-o>` / `<C-i>`


### Undo/redo

- Undo: `u` (if you don't like default undo behavior like me, uncomment #66 in config.vim)

- Redo: `<C-r>`

### Copy / paste

- Copy: `y`

- Copy line: `yy`

- Paste: `p`
(or insert mode and ctrl+v if the habit is too strong to break)

### Delete

- Delete character: `x`

- Delete line: `dd`

- Delete word: `dw`

- Delete to end of line: `d$`

- Delete inside of parens: `di"` (Think delete _in_ parens)

- Delete inside of quotes: `di'`

- Delete inside of backticks, etc, etc: di\`

### Chaining

As you may have noticed there are some reoccurring patterns. Capital letters do similar or opposite things. You can chain together motions with commands. Like `d`, delete, followed by a motion, like `$` to delete to the end of the line. This also works for copying. You can say `y$` to copy to the end of the line

### Change

This is interesting. It is supposed to be a more effective way to enter insert mode after deleting. It is pretty much: delete and then enter insert mode.

To delete inside of quotes and start typing in insert mode: `ci'`
"Think change in quotes"

- Change word: `cw`

etc

### Counts

You can do many commands more than once by prefixing them with a number. Like `3j` jumps down 3 lines. `5w` jumps forward 5 lines, etc

### Repeat

The holy `.`

You can repeat most commands, insert texts, and more with this button

### Search

Search with `/`

- Jump to next match with `n`

- Jump to prev match with `N`


See Plugins###Search for fzf searching

### Search replace example

Search with `/`, change word: `ciw` exit to normal mode <escape>, press `n` to jump to next word, type the holy `.` and the same change will be made.

### Windows, buffers, tabs

There are three ways to display and edit files in vim. To keep things simple I recommend starting with just using one of these three methods. Windows are what you can see on one screen (like a split view of two windows). I'll just focus on this. You can just use the `ctrl+p` to change between files like you would in an IDE and just ignore the concept of tabs and buffers until you're more comfortable with vim.

Windows however, are worth learning for that split view.

(`<C-w>` are window binding prefixes)

- Split a window horizontally: `<C-w>s`

- Split vertically: `<C-w>v`

- Close a window: `<C-w>c`

This is technically "custom", but you can nav between windows with Ctrl + j/k/h/l

## Plugins

Jump to next/prev change in a git-tracked file:
`[h` or `]h`

### Surround.vim

Change surroundings of a block: `cs A B` where A and B are the symbols to change. For example if I had `"a quoted sentence"` and if I had my cursor anywhere inside of the quotes you can say, `cs"'` to "change surround" the " to '. This also works for parens, backticks, brackets, etc.

Add surroundings of a block `ys A`. In this case the block is whatever navigation chain you specify. For instance at the beginning of a word you want to surround with quotes, you could say `ysw"` and the word would suddenly be surrounded by quotes. You could do this to an entire line with `ys$"`. In the middle of a word you could say

You can follow these same patterns to "delete surround" with `ds`

### Search

`ctrl+p`: IDE like fuzzy file search. ctrl+p again from this window to search for previous file.

`<leader>ff`: Fuzzy find all across project files

`<leader>fa`: IDE like find-all (useful for renaming across files)

`<leader>b`: Search open buffers (useful if you close a terminal window and need to reopen it)

### CoC

If you didn't turn off CoC that enables LSP and spellchecking:

Jump to next Syntax Error, Eslint, and spelling error (in that priority) with `[g` and `]g`.


Bring up code action with cursor on misspelled word or eslint error. Gives you a dropdown option for possible fixes.
`<leader>ac` 

Auto-format Terraform, Json, or auto-fix JS file with Eslint:
`<leader>af`

Rename a symbol (variable and occurrences in same file) with `<leader>rn`

### Nerd (file) tree

Toggle: `<C-b>`

Help commands: `?`

Action (create/copy/move/delete/etc): `m`

Open split: `s`

Open in current: `enter`

Refresh: `R`

### Coercion

Change casing of word with `cr`:

- `PascalCase`: `m`
- `camelCase`: `c`
- `snake_case`: `s`
- `SCREAMING_SNAKE`: `u`
- `kebab-case`: `k`
- `space case`: `<space>`
- `dot.case`: `.`
- `Title Case`: `t`

### Git

If you want to use vim for git management (nice diffs)

I like to do my Gitdiff views in a new tab with: `<leader>gg`.
However, the way I open in a new tab created a bug when you try to close the diffview of a specific file.

For example, when you open the fugitive status tab with `<leader>gg` and `dv` over a file to view its diff, you can't easily get back to that same tab view after closing the diffview with `<C-w>c`.
So you can reopen the view from a file with `,gg` and then diffviews will behave as expected. 

Open git diff view in new tab: `<leader>gg`

Nav cursor to and view diff of file: `dv`

To get back to a diffview in that same tab: `,gg`

Stage file `s`

Delete/Revert file `X`

Commit inside Vim: `:Gcommit`

Push inside Vim: `:Gpush`

View GitBlame window: `:Gblame`

View diff of current file with master: `<leader>gd`

View diff of current file with master: `<leader>gdm`

## Tabs

In an effort to make Vim more IDE like, there are tabs.
However I don't recommend using them.
I only use tabs for viewing git diff as said in the #git section.
But once in a tab it's worth knowing these custom shortcuts for navigation between them.
They were setup initially when I thought I'd be using tabs more often, but you will find they are weird to use with Vims buffer system and IMO easier to get lost in tab-hell than to just `Ctrl+p` your way back to a file that reopens the buffer you were in if one exists.

- Close current tab: `<leader>c`
- Open new tab: `<leader>o`
- Switch to tab 1-9: `<leader>1-9`
- Switch to last tab: `<leader>0`

## Custom

Fair warning, a lot of the bindings listed for plugins and stuff are also technically "custom". 

- `shift+k`: jump up
- `shift+j`: jump down

- `<C-s>`: save file (useful if you turn off auto-save)

- `>` indent file "right" in normal or visual mode (for a block of lines)
- `<` indent file "left"

- `<M-j>`: "Swap" or move line/visual block down
- `<M-k>`: "Swap" or move line/visual block up




