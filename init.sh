
export PATH=$PATH:$HOME/.cask/bin

if ! type cask > /dev/null; then
    echo "Install cask..."
    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
    cd ~/.emacs.d/ && cask install
fi

ln -sF $(pwd)/Cask ~/.emacs.d/Cask
ln -sF $(pwd)/init.el ~/.emacs.d/init.el
ln -sF $(pwd)/defaults.el ~/.emacs.d/defaults.el


