[[ -f ~/.Xdefaults ]] && xrdb -merge -I $HOME ~/.Xdefaults

export TERMINAL=urxvt
export EDITOR=nvim

dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec i3
