
export PATH=$PATH:$HOME/.cask/bin

if ! type cask > /dev/null; then
    echo "Install cask..."
    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
    cd ~/.emacs.d/ && cask install
fi

ln -sf $(pwd)/Cask ~/.emacs.d/Cask
ln -sf $(pwd)/init.el ~/.emacs.d/init.el
ln -sf $(pwd)/config.org ~/.emacs.d/config.org
ln -sf $(pwd)/elfeed.org ~/.emacs.d/elfeed.org
ln -sf $(pwd)/orguide.org ~/.emacs.d/orguide.org

