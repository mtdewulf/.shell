export EDITOR=vim
export LANG="en_US.UTF-8"
export PAGER='less -S -F'
export PATH=/usr/local/bin:$PATH  # brew
export PATH=/usr/local/sbin:$PATH  # brew
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"  # gnu-sed
export MANPATH="/usr/local/opt/grep/share/man:$MANPATH"  # gnu-grep
export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"  # gnu-sed
export TERM=screen-256color
export TMOUT=0
export WORKON_HOME=~/Envs

set -o vi

eval $(ssh-agent) > /dev/null
ssh-add > /dev/null 2>&1

alias cleanpy='find . -name "*.pyc" -delete; find . -name "__pycache__" -delete'
alias grep='ggrep --color=auto'
alias sed='gsed'
alias ssh='ssh -o TCPKeepAlive=yes -o ServerAliveInterval=15'
alias tmux='TERM=screen-256color tmux'
alias vi=vim
alias ls='ls -G'
alias dp='(dreampie $(which python) &>/dev/null &)'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

function set_tmux_title() {
    printf "\033k$1\033\\";
}

function pyrepo() {
    cd $HOME/Work/repos/$1;
    source $HOME/.virtualenvs/$1/bin/activate;
    set_tmux_title $1;
    # export DJANGODB_URL=postgres://mtdewulf@127.0.0.1/djangodb
    # export SNAPSHOT_URL=postgres://mtdewulf@127.0.0.1/snapshot
    # export WAREHOUSE_URL=postgres://mtdewulf@127.0.0.1/warehouse
    # export WAREHOUSE_URL=postgresql+psycopg2://mtdewulf@localhost/test_onworker
}
