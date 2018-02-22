[[ -f ~/.Xdefaults ]] && xrdb -merge -I $HOME ~/.Xdefaults

export TERMINAL=urxvt

dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# Autostart
pcmanfm -d &
dunst &
compton --config $HOME/.config/compton/compton.conf &
[ ! -s ~/.config/mpd/pid ] && mpd &
steam &
telegram-desktop &

sh ~/.bin/fehbg &
sh ~/.bin/setxkbmap &

exec i3
