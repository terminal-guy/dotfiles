#!/bin/bash
#
# ██╗   ██╗ █████╗  
# ██║   ██║██╔══██╗ Vishal Adhithya (VA)
# ██║   ██║███████║ https://github.com/terminal-guy/ (GITHUB  )
# ╚██╗ ██╔╝██╔══██║
#  ╚████╔╝ ██║  ██║
#   ╚═══╝  ╚═╝  ╚═╝
       
###########################################################
## => MY DMENU SCRIPT TO GO THE RECENT WEB PAGES   
###########################################################


declare options=(
"youtube
google
startpage
github
archlinux
archlinux-forms
quit")

choice=$(echo -e "${options[@]}" | dmenu -bw 2 -g 2 -l 8 -p 'Edit config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	youtube)
		choice="www.youtube.com/"
	;;
    google)	
		choice="www.google.com"
	;;
	startpage)
		choice="www.startpage.com"
	;;
	github)
		choice="www.github.com"
	;;
	archlinux)
		choice="https://www.archlinux.org/"
	;;
	archlinux-forms)
		choice="https://bbs.archlinux.org/"
	;;
	*)
		exit 1
	;;
esac
brave-browser-nightly "$choice"
# emacsclient -c -a emacs "$choice"
