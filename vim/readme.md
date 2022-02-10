# vimrc - my vim setup

List of plugged-in plugin:
- vim-airlines (statusbar)
- fzf (fuzzyfinder)
- vim-fugitive (git support)
- sonokai (color scheme)
- NERDTree (treeview for vim)
- vim-devicons (icons)
- AutoComplPop (autocomplete)

## Installation
1. Run `install.sh` (and yes, please `chmod` before do so).
2. Enter vim, type `:PlugInstall` to install plugs.
3. Done!

## Tips:
### Windows
#### Moving windows around
`ctrl` + `w` then `x` would rotates current window with the nearest window
on the right.

### Terminal inside vim
#### Open
`:terminal` or `:term` would do the trick, but horizontally splitted.

To split it vertically: `:vertical terminal`, or shorter, `:vert term`

#### Scrolling
- Enable window mode: `ctrl` + `w`
- Treating terminal as a normal vim window: `shift` + `N` (uppercase N).

Now you can scrolling in the terminal.

### Vim-fugitive
- Checkout to a branch:
```
:Git checkout <branch_name>
```

- View things more fancy:
```
:Git
```

## Note:
- If the installation works well, but the airline shape is still weird, try
decreasing line width (terminal).
- Fonts are installed automatically, but remember to change the terminal font
if necessary.
