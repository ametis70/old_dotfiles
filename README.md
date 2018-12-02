# ianmethyst's dots
![Desktop screneshot](https://raw.githubusercontent.com/ianmethyst/dotfiles/master/screenshot.png)

These are my _dotfiles_ for my Arch Linux setup running in my laptop. To manage these I use [GNU Stow](https://www.gnu.org/software/stow/) as follows:

```
stow nvim
```

Assuming that this repository will be at `$HOME/dotfiles`, the command above will symlink the files in the nvim folder (in the repository) preserving the folder structure to the parent folder from which the command was issued(`$HOME`, in this case).

To remove the symlink, use the `-D` switch. ( `stow -D nvim` for instance )

## Files

File | Description
------------ | -------------
`beets` | Music library manager.
`bin` | Some scripts that serve different puprposes. I'll move this to its own repo someday.
`compton` | Composite manager. 
`dunst`  | Notification daemon.
`fontconfig` | Font eye candy.
`gpg` | Because you have to encrypt your important stuff, right? 
`gtk` | Sometimes I use GUI apps. That's what this is about.
`i3` | My window manager of choice at the moment. 
`mpd` | Music player daemon.
`ncmpcpp` | Music player to be used with MPD.
`neofetch` | Config for script that displays info about the system.
`nvim` | NeoVim. Fork of Vim. Best text editor (?).
`openbox` | Another window manager I've been messing around with.
`polybar` | Status bar. Only for i3.
`ranger` | File explorer that can display pictures on the terminal.
`telegram` | Cool instant messaging service. I wonder why my friends doesn't use it.
`termite` | Terminal with true color and emoji support.
`tint2` | Status bar. Only for Openbox.
`x` | Xorg related config files.
`zathura` | PDF, EPUB and CBR viewer. Lovely.
`zsh` | Zsh shell.
