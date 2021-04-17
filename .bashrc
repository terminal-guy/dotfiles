# ~/.bashrc
#
# ██╗   ██╗ █████╗
# ██║   ██║██╔══██╗ Vishal Adhithya (VA)
# ██║   ██║███████║ https://github.com/terminal-guy/ (GITHUB  )
# ╚██╗ ██╔╝██╔══██║
#  ╚████╔╝ ██║  ██║
#   ╚═══╝  ╚═╝  ╚═╝


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Sets Neovim as MANPAGER 
export MANPAGER='nvim +Man!'
export MANWIDTH=999

# Setting the paths 

export SCRIPT_PATH="$HOME/bin/"
export FLUTTER_PATH="$HOME/Dev/flutter/bin"
export PATH="$HOME/.local/bin:$PATH:$SCRIPT_PATH:$FLUTTER_PATH"



# █████████╗  ██╗██████╗██████╗████████╗
# ██╔════██║  ████╔═══████╔══██╚══██╔══╝
# ████████████████║   ████████╔╝  ██║   
# ╚════████╔══████║   ████╔═══╝   ██║   
# █████████║  ██╚██████╔██║       ██║   
# ╚══════╚═╝  ╚═╝╚═════╝╚═╝       ╚═╝   
                                    

shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
shopt -s checkwinsize # checks term size when bash regains control


#  █████╗ ██╗     ██╗ █████╗ ███████╗
# ██╔══██╗██║     ██║██╔══██╗██╔════╝
# ███████║██║     ██║███████║███████╗
# ██╔══██║██║     ██║██╔══██║╚════██║
# ██║  ██║███████╗██║██║  ██║███████║
# ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝

# Managing DOTFILES

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'



# pacman and yay
alias pan='sudo pacman'
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias yaysua="yay -Sua --noconfirm"              # update only AUR pkgs
alias yaysyu="yay -Syu --noconfirm"              # update standard pkgs and AUR pkgs
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
alias pacin="sudo pacman -S"
alias pacout="sudo pacman -Rcns"
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages


# youtube-dl

alias yta="youtube-dl -x --embed-thumbnail --audio-format mp3"


# Changing "ls" to "exa"

alias la='exa -al --color=always --group-directories-first --icons' # my preferred listing
alias ls='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a --icons | egrep "^\."'

# Changing Shells... >_

alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out. Now on bash'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out. Now on fish'"

# For Emacs

alias doom="~/.emacs.d/bin/doom"
alias emacst="emacs --no-window-system"

# Coloured spark 

alias clear='clear; echo; echo; seq 1 $(tput cols) | sort -R | spark | lolcat; echo; echo' # Coloured

# BTW I USE SNAPS>>>>>:/

alias lsblk='lsblk | grep -v snap'

# Replacing Cat with Bat.

alias cat='bat'

# I check neovim version everytime 

alias nvim-v='nvim --version  | grep -v Compilation'

# Source bash
alias soub='source ~/.bashrc'

# I miss YAY :/
alias yay='paru'

# ██████╗ ██████╗  ██████╗ ███╗   ███╗██████╗ ████████╗
# ██╔══██╗██╔══██╗██╔═══██╗████╗ ████║██╔══██╗╚══██╔══╝
# ██████╔╝██████╔╝██║   ██║██╔████╔██║██████╔╝   ██║   
# ██╔═══╝ ██╔══██╗██║   ██║██║╚██╔╝██║██╔═══╝    ██║   
# ██║     ██║  ██║╚██████╔╝██║ ╚═╝ ██║██║        ██║   
# ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═╝        ╚═╝   
                                                     
# I Don't use this prompt RIGHT NOW :?

#export PS1="\[\e[33m\]\w \`parse_git_branch\` ❯\[\e[m\]\[\e[35m\]❯\[\e[m\]\[\e[32m\]❯\[\e[m\]  "
#source ~/.config/bash/heavy_prompt.sh
#eval "$(starship init bash)"

# My current bash PROMPT:
source ~/.config/bash/simple-but-cool.sh
