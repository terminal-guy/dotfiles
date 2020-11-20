
set -U fish_user_paths $fish_user_paths $HOME/.local/bin/
set fish_greeting                      # Supresses fish's intro message
set TERM "xterm-256color"              # Sets the terminal type
set EDITOR "nvim"      # $EDITOR use Emacs in terminal
set VISUAL "code" 



# sets vim as manpager
export MANPAGER="/bin/sh -c \"col -b | vim --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""


# Functions needed for !! and !$
# Will only work in default (emacs) mode.
# Will NOT work in vi mode.
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end
# The bindings for !! and !$
bind ! __history_previous_command
bind '$' __history_previous_command_arguments

# Function for creating a backup file
# ex: backup file.txt
# result: copies file as file.txt.bak
function backup --argument filename
    cp $filename $filename.bak
    mv $filename.bak ~/.backup/
end













# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# display manager
alias spectr="startx /usr/bin/spectrwm"
alias i3wm="startx /usr/bin/i3wm"
# for vim vundle
alias vundle-int="vim +PluginInstall +qall"


# for neovim as vi alias
alias vi="nvim"

# alias for config files to github
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# alias for import gpg keys from aur
alias imp-gpg='gpg --keyserver pool.sks-keyservers.net --recv-keys'


#alias for cd nvim
alias nv="cd ~/.config/nvim/"

#alias for emulators
#alias emulator="cd ~/Android/Sdk/emulator/ && ./emulator -avd Pixel_3a_API_30_x86 &"


#########################################################
# => PATH FOR APPLICATIONS
#########################################################

export DART_SDK=/opt/flutter/bin/cache/dart-sdk/bin





