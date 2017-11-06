[[ -f ~/.Xdefaults ]] && xrdb -merge -I $HOME ~/.Xdefaults

export TERMINAL=rxvt-unicode

# Autostart
pcmanfm -d &
dunst &
compton --config $HOME/.config/compton/compton.conf &

sh ~/.bin/fehbg &
sh ~/.bin/setxkbmap &

exec i3
