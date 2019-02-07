#!/bin/bash
curr_dir=$(pwd)
emacs_path=~/.emacs.d

# Make directories if not exist
mkdir -p $emacs_path/{backups,modes}
mode_path=$emacs_path/modes

# Install Cask if not exists
#if ! type cask > /dev/null; then
#    echo "Install cask..."
#    rm -rf ~/.cask
#    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
#    export PATH=$PATH:~/.cask/bin
#    cd $emacs_path/ && cask install
#fi

echo "Link main config files..."
#ln -sf $curr_dir/Cask $emacs_path/Cask
ln -sf $curr_dir/init.el $emacs_path/init.el
ln -sf $curr_dir/config.org $emacs_path/config.org
ln -sf $curr_dir/elfeed.org $emacs_path/elfeed.org

echo "Make and link directory for extra modes..."
ln -sf $curr_dir/modes/promela-mode.el $mode_path/promela-mode.el
ln -sf $curr_dir/modes/eprime-mode.el $mode_path/eprime-mode.el

# Tmux config
echo "Link tmux config..."
ln -sf $curr_dir/.tmux.conf ~/.tmux.conf

echo "Finished."
