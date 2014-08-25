bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

bindkey -v
KEYTIMEOUT=1

bindkey -M viins 'jj' vi-cmd-mode

bindkey -a '^Y' redo
bindkey -M vicmd 'u' undo
