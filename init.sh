#!/bin/bash
curr_dir=$(pwd)
emacs_path=~/.emacs.d

# Install Cask if not exists
if ! type cask > /dev/null; then
    echo "Install cask..."
    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
    cd $emacs_path/ && cask install
fi

export PATH=$PATH:$HOME/.cask/bin

echo "Link main config files..."
ln -sf $curr_dir/Cask $emacs_path/Cask
ln -sf $curr_dir/init.el $emacs_path/init.el
ln -sf $curr_dir/config.org $emacs_path/config.org
ln -sf $curr_dir/elfeed.org $emacs_path/elfeed.org

# Make directory for emacs backups
mkdir -p $emacs_path/backups

echo "Make and link directory for extra modes..."
mode_path=$emacs_path/modes
mkdir -p $mode_path
ln -sf $curr_dir/modes/promela-mode.el $mode_path/promela-mode.el
ln -sf $curr_dir/modes/eprime-mode.el $mode_path/eprime-mode.el

# Tmux config
echo "Link tmux config..."
ln -sd $curr_dir/.tmux.conf ~/.tmux.conf

echo "Finished."
