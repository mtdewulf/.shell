export TERM=screen-256color
export EDITOR=vi
export WORKON_HOME=~/Envs

set -o vi

source /usr/local/bin/virtualenvwrapper.sh

eval $(ssh-agent) > /dev/null
ssh-add 2&>1 > /dev/null
alias ssh='ssh -o TCPKeepAlive=yes -o ServerAliveInterval=15'

alias tmux='TERM=screen-256color tmux'

alias cleanpy='for file in $(find -name "*.pyc"); do rm $file; done'

. $HOME/.bashrc
