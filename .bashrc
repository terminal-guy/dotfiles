#
# ~/.bashrc
#__     ___     _           _      _       _ _     _ _   _
#\ \   / (_)___| |__   __ _| |    / \   __| | |__ (_) |_| |__  _   _  __ _
# \ \ / /| / __| '_ \ / _` | |   / _ \ / _` | '_ \| | __| '_ \| | | |/ _` |
#  \ V / | \__ \ | | | (_| | |  / ___ \ (_| | | | | | |_| | | | |_| | (_| |
#   \_/  |_|___/_| |_|\__,_|_| /_/   \_\__,_|_| |_|_|\__|_| |_|\__, |\__,_|
#                                                             |___/
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Sets Neovim as MANPAGER 

export MANPAGER='nvim +Man!'
export MANWIDTH=999


export PATH="$HOME/bin:$PATH"



#    _    _ _
#   / \  | (_) __ _ ___
#  / _ \ | | |/ _` / __|
# / ___ \| | | (_| \__ \
#/_/   \_\_|_|\__,_|___/




#alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'


#shopt

shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
shopt -s checkwinsize # checks term size when bash regains control



# pacman and yay
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias yaysua="yay -Sua --noconfirm"              # update only AUR pkgs
alias yaysyu="yay -Syu --noconfirm"              # update standard pkgs and AUR pkgs
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
alias pacin="sudo pacman -S"
alias pacout="sudo pacman -Rcs"
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages


# youtube-dl

alias yta="youtube-dl -x --embed-thumbnail --audio-format mp3"

# export PATH="$PATH:/home/va/.source/development/flutter/bin"


# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first --icons' # my preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a --icons | egrep "^\."'



alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

# for display managers

alias spectr="startx /usr/bin/spectrwm"


# for doom emacs

alias doom="~/.emacs.d/bin/doom"
alias emacst="emacs --no-window-system"
#colorscript random

#alias clear='clear; echo; echo;  spark 0 30 55 80 33 150 0 40 55 80 33 150 0 40 55 80 33 120 0 40 55 80 33 150 0 40 55 80 33 120 0 40 55 80 33 15 | lolcat; echo; echo'

alias clear='clear; echo; echo; seq 1 $(tput cols) | sort -R | spark | lolcat; echo; echo' # Coloured

#
# BTW I USE SNAPS>>>>>>:/
#
alias lsblk='lsblk | grep -v snap'


#export PS1="\[\e[33m\]\w \`parse_git_branch\` ❯\[\e[m\]\[\e[35m\]❯\[\e[m\]\[\e[32m\]❯\[\e[m\]  "
#exec fish
#source ~/.prompt.sh
#source ~/.config/bashrc/heavy_prompt.sh
source ~/.config/bashrc/simple-but-cool.sh

#exec fish
#source "$HOME/.cargo/env"

#eval "$(starship init bash)"

