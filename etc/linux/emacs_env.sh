# emacs_env.sh for Ubuntu
if emacsclient -e "t" > /dev/null 2>&1 ; then
    echo 'Emacs daemon is already running.'
else
    emacs --daemon
fi

export EDITOR='emacsclient -a "" -t'
alias e=${EDITOR}
alias ekill='emacsclient -e "(kill-emacs)"'
