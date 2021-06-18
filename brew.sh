#!/bin/bash 

if ! command -v brew &> /dev/null
then
    echo "brew not found. Installing it now 🍺"
    bash <(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
fi

# formulae
brew install git
brew install jq # json
brew install tmux
brew install neovim
brew install wget
brew install watch
brew install httpie


brew install tree # tree view of dirs
brew install fzf # fuzzy search
brew install fd # alternative to find
brew install tldr # alternative to man pages
brew install bat # prettier cat
brew install tig # git repo cli browser
brew install dust # disk space - modern alt to du
brew install delta # git diff alternative

brew install node
brew install pyenv # python version manager
brew install rbenv # ruby version manager
brew install docker
brew install postgresql
brew install kubectl
brew install kubectx
brew install postman

brew install ffmpeg # media editing
brew install sox # audio processing
brew install imagemagick # image processing
brew install pandoc # universal document formatting

# casks
brew install --cask rectangle
brew install --cask blackhole-16ch
brew install --cask vlc

