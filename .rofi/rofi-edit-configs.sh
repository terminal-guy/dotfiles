#!/bin/bash
# ██╗   ██╗ █████╗  
# ██║   ██║██╔══██╗ Vishal Adhithya (VA)
# ██║   ██║███████║ https://github.com/terminal-guy/ (GITHUB  )
# ╚██╗ ██╔╝██╔══██║
#  ╚████╔╝ ██║  ██║
#   ╚═══╝  ╚═╝  ╚═╝
       
###########################################################
## => MY ROFI SCRIPT TO EDIT CONFIG FILES   
###########################################################

declare options=("alacritty
awesome
bash
broot
bspwm
dunst
dwm
herbstluftwm
i3
neovim
picom
polybar
qtile
qutebrowser
spectrwm
st
sxhkd
termite
vim
xmobar
xmonad
xresources
quit")

choice=$(echo -e "${options[@]}" | rofi -dmenu -p 'Edit config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	alacritty)
		choice="$HOME/.config/alacritty/alacritty.yml"
	;;
	awesome)
		choice="$HOME/.config/awesome/rc.lua"
	;;
	bash)
		choice="$HOME/.bashrc"
	;;
	broot)
		choice="$HOME/.config/broot/conf.toml"
	;;
	bspwm)
		choice="$HOME/.config/bspwm/bspwmrc"
	;;
	dunst)
		choice="$HOME/.config/dunst/dunstrc"
	;;
	dwm)
		choice="$HOME/.suckless/DWM/config.h"
    ;;
	qtile)
		choice="$HOME/.config/qtile/config.py"
    ;;	
	herbstluftwm)
		choice="$HOME/.config/herbstluftwm/autostart"
	;;
	i3)
		choice="$HOME/.i3/config"
	;;
	neovim)
		choice="$HOME/.config/nvim/init.vim"
	;;
	picom)
		choice="$HOME/.config/picom/picom.conf"
	;;
	polybar)
		choice="$HOME/.config/polybar/config"
	;;
	qtile)
		choice="$HOME/.config/qtile/config.py"
	;;
	qutebrowser)
		choice="$HOME/.config/qutebrowser/autoconfig.yml"
	;;
	spectrwm)
		choice="$HOME/.spectrwm.conf"
	;;
	st)
		choice="$HOME/.source/st/config.h"
	;;
	sxhkd)
		choice="$HOME/.config/sxhkd/sxhkdrc"
	;;
	termite)
		choice="$HOME/.config/termite/config"
	;;
	vim)
		choice="$HOME/.vimrc"
	;;
	xmobar)
		choice="$HOME/.config/xmobar/xmobarrc"
	;;
	xmonad)
		choice="$HOME/.xmonad/xmonad.hs"
	;;
	xresources)
		choice="$HOME/.Xresources"
	;;
	*)
		exit 1
	;;
esac
st -e nvim "$choice"
# emacsclient -c -a emacs "$choice"
