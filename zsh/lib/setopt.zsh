# Allow comments even in interactive shells
setopt interactive_comments

# Expansion and Globbing
setopt extended_glob

# If command isn't executable, try to cd to directory
setopt autocd

# History
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_verify
setopt inc_append_history
setopt append_history
setopt share_history
setopt extended_history

set noclobber
