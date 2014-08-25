autoload -U compinit
compinit
zmodload -i zsh/complist

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zstyle ':completion:*:*:*:*:*' menu select
zstyle '*:processes-names' command 'ps -e -o comm='
zstyle ':completion:*' file-sort modification reverse
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:aliases' list-colors "=*=$color[green]"
