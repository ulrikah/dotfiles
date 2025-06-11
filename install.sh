#! /bin/zsh

# copied from https://github.com/mathiasbynens/dotfiles/blob/master/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")";

if [[ $* == *--pull* ]]
then
    echo "Pulling dotfiles origin";
    git pull origin main
fi

function doIt() {
    rsync --exclude ".git/" \
        --exclude ".DS_Store" \
        --exclude "install.sh" \
        --exclude "README.md" \
        --exclude "fonts" \
        --exclude "brew/" \
        --exclude "iterm/" \
        -avh --no-perms . ~;
    source ~/.zshrc;
}

doIt;
unset doIt;

