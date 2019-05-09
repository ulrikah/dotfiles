#  shortcuts
alias chrome="open -a 'Google Chrome.app' --args --disable-web-security"
alias vpn="/opt/cisco/anyconnect/bin/vpn connect vpn.ntnu.no"
alias vpnd="/opt/cisco/anyconnect/bin/vpn disconnect"

# lr:  Full Recursive Directory Listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias ls..='ls ..'
alias cl='clear'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias cpwd='pwd | tr -d "\r\n" | pbcopy'
alias herokudb='heroku pg:psql -a gruppe23-it2901'
alias hgrep='history | grep --color=auto '
alias md='macdown'
alias src='source'
alias f='open -a Finder ./'
alias brssh='ssh ulrik@165.227.128.215'

export PATH="$HOME/Library/Haskell/bin:$PATH"
export NLTK_DATA="/Users/ulrikah/fag/tdt4310-text_analysis/nltk_data"
export PATH=$PATH:/Users/ulrikah/Library/Android/sdk/platform-tools/
source ~/.bashrc

