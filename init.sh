#!/bin/bash
export PATH=$PATH:$HOME/.cask/bin
emacs_path=~/.emacs.d

# Install Cask if not exists
if ! type cask > /dev/null; then
    echo "Install cask..."
    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
    cd $emacs_path/ && cask install
fi

echo "Link main config files..."
ln -sf $(pwd)/Cask $emacs_path/Cask
ln -sf $(pwd)/init.el $emacs_path/init.el
ln -sf $(pwd)/config.org $emacs_path/config.org
ln -sf $(pwd)/elfeed.org $emacs_path/elfeed.org

# Make directory for emacs backups
mkdir -p $emacs_path/backups

echo "Make and link directory for extra modes..."
mode_path=$emacs_path/modes
mkdir -p $mode_path
ln -sf $(pwd)/modes/promela-mode.el $mode_path/promela-mode.el
ln -sf $(pwd)/modes/eprime-mode.el $mode_path/eprime-mode.el

echo "Finished."
