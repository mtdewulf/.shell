export EDITOR=vi
export WORKON_HOME=~/Envs
set -o vi
source /usr/local/bin/virtualenvwrapper.sh
alias ssh='ssh -o TCPKeepAlive=yes -o ServerAliveInterval=15'
alias tmux='TERM=xterm-256color tmux'
