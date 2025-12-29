#!/bin/sh
SCRIPT_PATH="$0"
SCRIPT_DIR="$(cd "$(dirname "$SCRIPT_PATH")" && pwd)"
DOTFILES="$SCRIPT_DIR/../dotfiles"

# Create inital .config file
if [ -d "~/.config" ]; then
  mkdir ~/.config
fi

if [ -d "~/.config/tmux" ]; then
  mkdir ~/.config/tmux
fi

ln -sf $DOTFILES/vim/vimrc ~/.vimrc
ln -sf $DOTFILES/tmux/tmux.conf ~/.tmux.conf

#TODO: automate with loop, make bash distro aware, handle the clangd special conf for esp idf.
#TODO: maybe remove the double software name in this repo /dotfiles?
#TODO: maybe make this whole repo an hidden folder with dot?
