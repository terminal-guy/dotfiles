set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on


set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar




source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/common/settings.vim
source $HOME/.config/nvim/common/lightline.vim
source $HOME/.config/nvim/syntax/python-syntax.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
"source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/nord.vim
"source $HOME/.config/nvim/themes/material.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/dart.vim
