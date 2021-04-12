# Mappings

Here is a reference you can use and add to as you learn vim. This really comes in handy at the beginning.

In vim notation,
`<C-w>s` means `Ctrl+w` followed by a quick `s`

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
(or insert mode and ctrl_+v if the habit is too strong to break)

### Delete

- Delete character: `x`

- Delete line: `dd`

- Delete word: `dw`

- Delete to end of line: `d$`

- Delete inside of parens: `di"` (Think delete _in_ parens)

- Delete inside of quotes: `di'`

- Delete inside of backticks, etc, etc: di`

### Chaining

As you may have noticed there are some reoccuring patterns. Capital letters do similar or opposite things. You can chain together motions with commands. Like `d`, delete, followed by a motion, like `$` to delete to the end of the line. This also works for copying. You can say `y$` to copy to the end of the line

### Change

This is interesting. It is supposed to be a more effective way to enter insert modeafter deleting. It is pretty much: delete and then enter insert mode.

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

Change surroundings of a block: `cs <A> <B>` where A and B are the symbols to change. For example if I had `"a quoted sentance"` and if I had my cursor anywhere inside of the quotes you can say, `cs"'` to "change surround" the " to '. This also works for parens, backticks, brackets, etc.

Add surroundings of a block `ys <A>`. In this case the block is whatever navigation chain you specifiy. For instance at the beginning of a word you want to surround with quotes, you could say `ysw"` and the word would suddenly be surrounded by quotes. You could do this to an entire line with `ys$"`. In the middle of a word you could say

You can follow these same patterns to "delete surround" with `ds`

`ctrl+p`: IDE like fuzzy file search. ctrl+p again from this window to search for previous file.

Autoformat Terraform, Json, or autofix JS file with Eslint:
`<leader>af` (leader is typically `\` though you can remap it. I love it there)

If you didn't turn off CoC you can jump to next Sytax, Eslint, and spelling error (in that priority) with `[g` and `]g`. You can also rename a symbol (variable and occurances in same file) with `<leader>rn`

Change casing of word with `cr`:

- PascalCase: `m`
- camelCase: `c`
- snake_case: `s`
- SCREAMING_SNAKE: `u`
- kebab-case: `k`
- space case: `<space>`
- dot.case: `.`
- Title Case: `t`

## Custom

- `shift+k`: jump up
- `shift+j`: jump down

- `<C-s>`: save file (useful if you turn off auto-save)

- `>` indent file "right" in normal or visual mode (for a block of lines)
- `<` indent file "left"





