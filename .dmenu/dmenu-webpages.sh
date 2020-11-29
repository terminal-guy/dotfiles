#!/bin/bash
#  ____ _____
# |  _ \_   _|  Derek Taylor (DistroTube)
# | | | || |    http://www.youtube.com/c/DistroTube
# | |_| || |    http://www.gitlab.com/dwt1/
# |____/ |_|
#
# Dmenu script for editing some of my more frequently edited config files.


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
