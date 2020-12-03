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


# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$ "`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$ "`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

#export PS1="\[\e[33m\]\w \`parse_git_branch\` ❯\[\e[m\]\[\e[35m\]❯\[\e[m\]\[\e[32m\]❯\[\e[m\]  "
#exec fish
#source ~/.prompt.sh
#source ~/.config/bashrc/heavy_prompt.sh
source ~/.config/bashrc/simple-but-cool.sh
