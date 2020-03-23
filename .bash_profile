#!/bin/bash

export PATH="$HOME/bin:$PATH"
# export PATH='/Users/ulrikah/Library/Android/sdk/platform-tools:$PATH'

# bash-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# load the shell dotfiles
# remember to not use space between filenames
for file in ~/dotfiles/.{aliases,functions,exports,local_aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;


export LC_ALL="en_US.UTF-8"


export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
