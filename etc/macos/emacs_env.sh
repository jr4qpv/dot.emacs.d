# emacs_env.sh for macos
export EDITOR='emacsclient -n'

alias e=${EDITOR}
##alias e='emacsclient -a "" -t'
alias ec='emacsclient'
alias ee='open -a /Applications/Emacs.app $1'
alias em='emacs'
alias ekill='emacsclient -e "(kill-emacs)"'
