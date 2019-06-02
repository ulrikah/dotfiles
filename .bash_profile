#!/bin/bash

export PATH="$HOME/bin:$PATH"
export PATH=$HOME/Library/Haskell/bin:$PATH
# export PATH='/Users/ulrikah/Library/Android/sdk/platform-tools:$PATH'

# load the shell dotfiles
# remember to not use space between filenames
for file in ~/dotfiles/.{aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

