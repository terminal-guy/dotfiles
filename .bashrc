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

# sets vim as manpager
export MANPAGER="/bin/sh -c \"col -b | vim --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""




#    _    _ _
#   / \  | (_) __ _ ___
#  / _ \ | | |/ _` / __|
# / ___ \| | | (_| \__ \
#/_/   \_\_|_|\__,_|___/




alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 

#shopt

shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
shopt -s checkwinsize # checks term size when bash regains control



# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'



alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

# for display managers

alias spectr="startx /usr/bin/spectrwm"


# for doom emacs

alias doom="~/.emacs.d/bin/doom"

colorscript random
PS1='[\u@\h \W]\$ '

exec fish
