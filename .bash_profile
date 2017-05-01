export EDITOR=vim
export LANG="en_US.UTF-8"
export PAGER='less -S -F'
export PATH=/usr/local/bin:$PATH  # brew
export PATH=/usr/local/sbin:$PATH  # brew
export TERM=screen-256color
export TMOUT=0

set -o vi

eval $(ssh-agent) > /dev/null
ssh-add > /dev/null 2>&1

alias cleanpy='find . -name "*.pyc" -delete; find . -name "__pycache__" -delete'
alias ssh='ssh -o TCPKeepAlive=yes -o ServerAliveInterval=15'
alias tmux='TERM=screen-256color tmux'
alias vi=vim
alias ls='ls -G'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

function set_tmux_title() {
    printf "\033k$1\033\\";
}
