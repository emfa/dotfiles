alias svim='sudo vim'
alias smount='sudo mount'
alias sumount='sudo mount'

alias tarx='tar -xvf'

alias c='xsel -ib'
alias h='history | tail'
alias hg='history | grep '

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
function cdl () { cd "$@" && ls; }

alias g='git'
alias ga='git add'
alias gs='git status'
alias gd='git diff'
alias gp='git push'
alias grm='git rm'
alias gmv='git mv'

alias ls='ls --group-directories-first --color=auto'  # group directories before files
alias la='ls -A'
alias ll='ls -lh'
alias lla='ls -lhA'

alias rmf='rm -rf'
alias -g L='|less'
alias vi='vim'
alias vdiff='vimdiff'
alias vless='/usr/share/vim/vim74/macros/less.sh'
