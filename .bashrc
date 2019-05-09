alias python=python3
alias pip=pip3
alias py=python

mkcdir ()
{
        mkdir -p -- "$1" &&
                  cd -P -- "$1"
}

eval $(thefuck --alias)

export LANG=no_NO.UTF-8
export LC_ALL=no_NO.UTF-8
