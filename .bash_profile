export TERM=screen-256color
export EDITOR=vi
export WORKON_HOME=~/Envs

set -o vi

source /usr/local/bin/virtualenvwrapper.sh

alias ssh='ssh -o TCPKeepAlive=yes -o ServerAliveInterval=15'
alias tmux='TERM=screen-256color tmux'

. .bashrc
