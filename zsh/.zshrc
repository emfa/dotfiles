# Sudo alias 
alias svim='sudo vim'
alias smount='sudo mount'
alias sumount='sudo mount'

# Programs
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

