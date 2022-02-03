# vimrc - my vim setup

List of plugged-in plugin:
- vim-airlines (statusbar)
- fzf (fuzzyfinder)
- vim-fugitive (git support)
- sonokai (color scheme)
- NERDTree (treeview for vim)
- vim-devicons (icons)

## Installation
1. Run `install.sh` (and yes, please `chmod` before do so).
2. Enter vim, type `:PlugInstall` to install plugs.
3. Done!

## Tips:
### Moving windows around
`ctrl` + `w` then `x` would rotates current window with the nearest window
on the right.

### Open terminal inside vim
`:terminal` or `:term` would do the trick, but horizontally splitted.

To split it vertically: `:vertical terminal`, or shorter, `:vert term`

### Vim-fugitive
- Checkout to a branch:
```
:Git checkout <branch_name>
```

## Note:
- If the installation works well, but the airline shape is still weird, try
decreasing line width (terminal).
- Fonts are installed automatically, but remember to change the terminal font
if necessary.