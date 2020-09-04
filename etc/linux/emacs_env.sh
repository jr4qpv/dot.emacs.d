# emacs_env.sh for Ubuntu

if [ -v DISPLAY ]; then
  export EDITOR='emacsclient -n'
  alias e=${EDITOR}
  alias em='emacs -nw'
else    
  if emacsclient -e "t" > /dev/null 2>&1 ; then
    echo 'Emacs daemon is already running.'
  else
    echo 'Starting Emacs daemon.'
    emacs --daemon > ~/.emacs.d/etc/log/emacs_start.log 2>&1
  fi

  export EDITOR='emacsclient -a "" -t'
  alias e=${EDITOR}
  alias ekill='emacsclient -e "(kill-emacs)"'
fi
