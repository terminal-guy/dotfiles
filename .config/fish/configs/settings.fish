set -U fish_user_paths $fish_user_paths $HOME/.local/bin/
set fish_greeting                      # Supresses fish's intro message
set TERM "xterm-256color"              # Sets the terminal type
set EDITOR "nvim"      # $EDITOR use Emacs in terminal
set VISUAL "code" 



# sets neovim as manpager
export MANPAGER='nvim +Man!'
export MANWIDTH=999



#########################################################
# => PATH FOR APPLICATIONS
#########################################################

export DART_SDK=/opt/flutter/bin/cache/dart-sdk/bin


