# ianmethyst's dots
![Desktop screneshot](https://raw.githubusercontent.com/ianmethyst/dotfiles/master/screenshot.png)

This are my _dotfiles_ for my Arch Linux setup running in my laptop. To manage these I use [GNU Stow](https://www.gnu.org/software/stow/) as follows:

```
stow nvim
```

Assuming that this repository will be at `$HOME/dotfiles`, the command above will symlink the files in the nvim folder (in the repository) preserving the folder structure to the parent folder from which the command was issued(`$HOME`, in this case).

To remove the symlink, use the `-D` switch. ( `stow -D nvim` for instance )


## Files

File | Description
------------ | -------------
`bin` | Some scripts that serve different puprposes.
`bin/oneshot` | Here lie a few scripts that will be only used after a fresh Arch Linux installation.
`compton` | Composite manager. 
`dunst`  | Notification daemon.
`i3` | My window manager of choice. 
`nvim` | NeoVim. Fork of Vim.
`polybar` | Status bar.
`x` | Xorg related config files.
`zathura` | Document viewer.
`zsh` | Zsh shell.

## TODO

- [x] Initial commit.
- [ ] Configure zsh.
- [ ] Configure mpd.
- [ ] Configure weechat.
- [ ] Configure mutt.
