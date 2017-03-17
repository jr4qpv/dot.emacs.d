# emacs_env.sh for Ubuntu

if [ `ps ux | grep emacs\ --daemon | wc -l` = 1 ]
then
    `emacs --daemon`
else
    echo 'Emacs daemon is already running.'
fi

export EDITOR='emacsclient -a "" -t'
alias e=${EDITOR}
alias ekill='emacsclient -e "(kill-emacs)"'
