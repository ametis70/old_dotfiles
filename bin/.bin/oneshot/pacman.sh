#! /bin/sh
echo pacman -Syu \
	`# Microcode Updates` intel-ucode \
	`# Bootloader` grub efibootmgr \
	`# Shell` zsh grml-zsh-config bash-completion \
	`# Laptop specifics` acpi tlp \ 
	`# Network Manager` networkmanager \
	`# Filesystem seach and indexing` mlocate \
	`# Development` neovim git the_silver_searcher \
	`# X related` xclip xorg-xinit xorg-xdf xorg-xbacklight \
	`# NVIDIA` bumblebee mesa nvidia xf86-video-intel lib32-virtualgl lib32-nvidia-utils primus lib32-primus bbswitch \
	`# Wacom`  xf86-input-wacom \
	`# Fonts` tamsyn-font dina ttf-dejavu ttf-liberation adobe-source-sans-pro-fonts adobe-source-code-pro-fonts ttf-ubuntu-font-family \
	`# i3 related` dmenu i3status \
	`# Terminal Emulator` rxvt-unicode \
	`# Archives` unzip zip unrar p7zip \
	`# CLI apps` ranger \
	`# Image viewing/editing` feh imagemagick \
	`# Pulseaudio` pulseaudio pulseaudio-alsa \
	`# MPD` libmpdclient \
	`# Web Browsers` chromium firefox \
	`# Development(GUI)` atom \
	`# PDF reader` zathura zathura-pdf-mupdf \
	`# Games` steam \
	`# File manager(GUI)` pcmanfm gvfs xarchiver \
	`# Filesystems` exfat-utls ntfs-3g  \
	`# Gparted` gparted \
	`# Video player` vlc qt4 mpv \
	`# Office` libreoffice \
	`# Image/Vector edit` gimp inkscape krita \
	`# Multimedia edit` audacity handbrake obs-studio \ 
	`# Processing` processing \
	`# Printing` cups cups-pdf gtk3-print-backends \
	`# zeroconf` avahi nss-mdns \
	`# systray` stalonetray \
	`# Notifications` dunst \
	`# Virtual Machines` qemu \
	`# Samba` samba 
