# NVim Config

A copy of the configuration I use for NeoVim. Based mostly on [Neovim from scratch](https://github.com/LunarVim/Neovim-from-scratch) with some keybinds changed

## Keybinds

This isn't a comprehensive list at all, but it's a copy of the one I have in my notes to just remind me of some of the keybinds I forget to use.
For instance, this list doesn't contain that I bind `j + k` in insert mode to exit insert mode, which is something I have memorized already, so I didn't put
in this list.

### General

- `control + i / o` - jump back and forth between previous navigation locations
- `*` and `#` - search for the current word under the cursor forwards / backwards
- `%` - jump to the matching parentheses / bracket
- `:%s /find/replace/g` - find and replace globally
- `control + d` and `control + u` - move by half pages
- `control + f` and `control + b` - move by full pages
- `F12` to fix the bufferline background being the wrong color (just reloads the config file, not sure why this breaks sometimes)

### Misc

- `visual mode: alt + j/k` OR `visual mode: J = move line vertically
- `alt + o / O` = create empty line below / above

### LSP

- `gl` - show error for current line
- `gd` - go to definition
- `gD` - go to declaration
- `gi` - go to implementation
- `gr` - go to references
- `K` - activate hover
- `control + K` - signature help
- `[d` and `]d` - go to previous / next diagnostic

### CMP

- `control + z` - open code completion
- `control + e / y` - scroll through autocomplete docs
- `control + j / k` - go through autocomplete list (`tab` and `shift tab` also work)

### Nvim Tree

- `space + e` - open and close
    - Can also use `q` to close
- `d` - delete file
- `g?` - view all bindings
- `c` - copy, `y` - copy name, `x` - cut, `p` - paste
- `r` - rename
- `.` - run file with command in front of it
- `a` - create new file

### Surround

- `cs` - used to change surroundings
    - `cs"'` - change surround “ → ‘
    - `cs"<p>` - change surround “ → <p></p>
    - `cst"` - change surround tags → “
- `ds` - used to delete surroundings
    - `ds"` - delete surrounding “
- `ys` - used to add surroundings
    - `ysiw"` - add “ around current word
- `Visual mode: S` - surrounds selection with something
    - `S<p class="important">` - surround with p tag

### Splitscreen

- `space + v` = vertical split
- `space + s` = horizontal split
- `space + hjkl` = move windows
- `alt + arrows` = resize

### Buffers

- `shift + h/l` = previous / next buffer
- `space + q` = close current buffer

### Telescope

- `space + f` = find files
- `control + t` = live grep in file

### Comments

- `gc` - line comment (`gcc` if you just want to do current line)
- `gb` - block comment
- `gco`/ `gcO` - add comment below / above
- `gcA` - add comment at end of line

### Gitsigns

- `:Gitsigns` + command for doing things like getting preview of changes, turn on automatic blame

