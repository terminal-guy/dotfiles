
# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# display manager
alias spectr="startx /usr/bin/spectrwm"
alias i3wm="startx /usr/bin/i3wm"
alias qti="startx /usr/bin/qtile"

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

# pacman and yay
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias yaysua="yay -Sua --noconfirm"              # update only AUR pkgs
alias yaysyu="yay -Syu --noconfirm"              # update standard pkgs and AUR pkgs
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
#alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages



