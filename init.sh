
export PATH=$PATH:$HOME/.cask/bin

if ! type cask > /dev/null; then
    echo "Install cask..."
    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
fi

cd ~/.emacs.d/ && cask install
