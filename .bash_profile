#!/bin/bash

# bash-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# load the shell dotfiles
# remember to not use space between filenames
for file in ~/dotfiles/.{aliases,functions,exports,local_aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;


