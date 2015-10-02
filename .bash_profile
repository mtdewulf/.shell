export EDITOR=vim
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"  # gnu-sed
export MANPATH="/usr/local/opt/grep/share/man:$MANPATH"  # gnu-grep
export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"  # gnu-sed
export TERM=screen-256color
export TMOUT=0
export WORKON_HOME=~/Envs

set -o vi

eval $(ssh-agent) > /dev/null
ssh-add > /dev/null 2>&1

alias cleanpy='for file in $(find . -name "*.pyc"); do rm $file; done'
alias grep='ggrep --color=auto'
alias sed='gsed'
alias ssh='ssh -o TCPKeepAlive=yes -o ServerAliveInterval=15'
alias tmux='TERM=screen-256color tmux'
alias vi=vim

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
    export DJANGODB_URL=postgres://mtdewulf@127.0.0.1/djangodb
    export SNAPSHOT_URL=postgres://mtdewulf@127.0.0.1/snapshot
    # export WAREHOUSE_URL=postgresql+psycopg2://mtdewulf@127.0.0.1/test_onworker
}

# Eternal bash history -- from http://stackoverflow.com/questions/9457233/unlimited-bash-history
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Turn off Apple's managing of history
export SHELL_SESSION_HISTORY=0
