#!/bin/sh
SCRIPT_PATH="$0"
SCRIPT_DIR="$(cd "$(dirname "$SCRIPT_PATH")" && pwd)"
DOTFILES="$SCRIPT_DIR/../dotfiles"

# Create inital .config file
mkdir -p ~/.config
mkdir -p ~/.config/tmux
mkdir -p ~/.config/tmux/plugins
mkdir -p ~/.config/nvim
mkdir -p ~/.tmux
mkdir -p ~/.vim
mkdir -p ~/.vim/colors

ln -sf $DOTFILES/vim/vimrc ~/.vimrc
ln -sf $DOTFILES/vim/vim/colors/catppuccin_frappe.vim ~/.vim/colors/catppuccin_frappe.vim
ln -sf $DOTFILES/tmux/tmux.conf ~/.tmux.conf
ln -sf $DOTFILES/git/gitconfig ~/.gitconfig

if [ ! -d ~/.config/tmux/plugins/catppuccin ]; then
  mkdir -p ~/.config/tmux/plugins/catppuccin
  git clone -b v2.1.3 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
fi

cp -rf $DOTFILES/nvim/config/* ~/.config

#TODO: automate with loop, make bash distro aware, handle the clangd special conf for esp idf.
#TODO: maybe remove the double software name in this repo /dotfiles?
#TODO: maybe make this whole repo an hidden folder with dot?
