autoload -U colors
colors

if [ -n "$DISPLAY" ]; then
    eval $(dircolors -b $XDG_CONFIG_HOME/dir_colors)
fi

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'

export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[0;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;30;43m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[0;31m'
