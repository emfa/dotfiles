export EDITOR="vim"
export XDG_CONFIG_HOME="$HOME/.config"
export TMPDIR="/tmp/$USER"
export BSPWM_SOCKET="$TMPDIR/bspwm-socket"

# Sudo alias 
alias svim='sudo vim'
alias smount='sudo mount'
alias sumount='sudo mount'

# Programs
alias alsamixer="alsamixer -g"
alias equalizer="alsamixer -D equal"

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

# tar aliases
alias tarx='tar -xvf'
alias targz='tar -zxvf'
alias tarbz2='tar -jxvf'

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

path=(
    ~/bin
    ~/scripts
    $path
)
