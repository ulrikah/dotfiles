export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH=$PATH:/Users/ulrikah/Library/Android/sdk/platform-tools/
export PATH=$(brew --prefix openvpn)/sbin:$PATH

# load the shell dotfiles
# remember to not use space between filenames
for file in ~/.{aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

source ~/.bashrc
