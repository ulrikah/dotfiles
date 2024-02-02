#!/bin/zsh
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Add $HOME/.local/bin to path
export PATH=$HOME/.local/bin:$PATH

# zsh path
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
export ZSH_THEME="typewritten/typewritten"
# typewritten theme: https://typewritten.dev/#/installation?id=oh-my-zsh
export ZSH_THEME="typewritten/typewritten"
export TYPEWRITTEN_PROMPT_LAYOUT="singleline"
export TYPEWRITTEN_CURSOR="beam"
export TYPEWRITTEN_RELATIVE_PATH="adaptive"
export TYPEWRITTEN_SYMBOL=">" # ﺣ ᓗ ފ
export TYPEWRITTEN_COLOR_MAPPINGS="primary:magenta;secondary:blue"

# disable permission issues
ZSH_DISABLE_COMPFIX=true

# case-sensitive completion.
CASE_SENSITIVE="true"

# hyphen-insensitive completion.
# NB! case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# zsh plugins
plugins=(
    git
    zsh-autosuggestions # https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
    npm
    docker
    colored-man-pages
)

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# init homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

# miniconda
if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
	. "$HOME/miniconda3/etc/profile.d/conda.sh"
else
	export PATH="$HOME/miniconda3/bin:$PATH"
fi	

# make poetry available
export PATH="$HOME/.poetry/bin:$PATH"

# make go available
export PATH="/usr/local/go/bin:$PATH"

# sdkman
[ -e "$HOME/.sdkman/bin/sdkman-init.sh" ] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# make rust available
export PATH="$HOME/.cargo/env:$PATH"

# nvm
if [ -e "${HOME}/.nvm" ]; then
    export NVM_DIR="${HOME}/.nvm" 
    . "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm
fi

# ghcup-env
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" 

# sdkman
export SDKMAN_DIR=$(brew --prefix sdkman-cli)/libexec
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"
export JAVA_HOME="/opt/homebrew/opt/sdkman-cli/libexec/candidates/java/current/bin/java"

# android
if [ -e "${HOMEBREW_PREFIX}/share/android-commandlinetools" ]; then
    export ANDROID_HOME="${HOMEBREW_PREFIX}/share/android-commandlinetools"
fi

# load the shell dotfiles
# remember to not use space between filenames
for file in ~/dotfiles/.{aliases,functions,exports,*.local}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

source $ZSH/oh-my-zsh.sh

# fzf
# has to come after the oh-my-zsh sourcing for some reason
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


