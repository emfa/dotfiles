if [[ -d "$ZDOTDIR" ]]; then
  for file in "$ZDOTDIR"/lib/*.zsh; do
    source "$file"
  done
fi

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
