[[ -f ~/.Xdefaults ]] && xrdb -merge -I $HOME ~/.Xdefaults

export TERMINAL=termite
export EDITOR=nvim

dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# Autostart
pcmanfm -d &
dunst &
# tint2 &
compton --config $HOME/.config/compton/compton.conf &
[ ! -s ~/.config/mpd/pid ] && mpd &
#steam &
#telegram-desktop &

# sh ~/.bin/fehbg &
# dash ~/.bin/mpvbg ~/Pictures/wallpapers/ds3.webm
sh ~/.bin/setxkbmap &

exec i3
