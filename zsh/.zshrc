export EDITOR="vim"
export XDG_CONFIG_HOME="$HOME/.config"

# Create temporary directory
export TMPDIR="/tmp/$USER"
if [[ ! -d $TMPDIR ]] then
    mkdir $TMPDIR
fi

export BSPWM_DIR="$TMPDIR/bspwm"
export BSPWM_SOCKET="$BSPWM_DIR/socket"
export BSPWM_TREE="$BSPWM_DIR/tree"
export BSPWM_HISTORY="$BSPWM_DIR/history"
export BSPWM_STACK="$BSPWM_DIR/stack"
export BSPWM_PANEL="$BSPWM_DIR/panel"

path=(
    $HOME/bin
    $XDG_CONFIG_HOME/scripts
    $path
)

# Sudo alias 
alias svim='sudo vim'
alias smount='sudo mount'
alias sumount='sudo mount'

# Programs
alias alsamixer="alsamixer -g"
alias equalizer="alsamixer -D equal"
alias tarx='tar -xvf'

# Shortcuts
alias rmi='rm -i'
alias c='xsel -ib'
alias h='history | tail'
alias hg='history | grep '
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ll='ls -l'
alias la='ls -la'

#alias mkdir and cd
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
function cdl () { cd "$@" && ls; }

# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# git aliases
alias g='git'
alias ga='git add'
alias gs='git status'
alias gc='git commit -m'
alias gp='git push'
alias grm='git rm'
alias gmv='git mv'

set -o noclobber
set -o vi

