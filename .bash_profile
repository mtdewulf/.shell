export TERM=screen-256color
export EDITOR=vi
export WORKON_HOME=~/Envs
export TMOUT=0
export GREP_OPTIONS='--color=auto'

set -o vi

eval $(ssh-agent) > /dev/null
ssh-add > /dev/null 2>&1

alias ssh='ssh -o TCPKeepAlive=yes -o ServerAliveInterval=15'
alias tmux='TERM=screen-256color tmux'
alias cleanpy='for file in $(find -name "*.pyc"); do rm $file; done'

. $HOME/.bashrc
