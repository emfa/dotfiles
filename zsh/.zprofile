export EDITOR="vim"
export XDG_CONFIG_HOME="$HOME/.config"

# Create temporary directory
export TMPDIR="/tmp/$USER"
if [[ ! -d $TMPDIR ]] then
    mkdir $TMPDIR
fi

# Github
export GITHUB_USER=emfa

# Paths
path=(
    $HOME/bin
    $XDG_CONFIG_HOME/scripts
    /usr/local/bin
    $path
)

fpath=(
   $XDG_CONFIG_HOME/functions
   $fpath
)

# Solarized colors
typeset -A colors
alpha="99"
colors[yellow]="#${alpha}b58900"
colors[orange]="#${alpha}cb4b16"
colors[red]="#${alpha}dc322f"
colors[magenta]="#${alpha}d33682"
colors[violet]="#${alpha}d33682"
colors[blue]="#${alpha}268bd2"
colors[cyan]="#${alpha}2aa198"
colors[green]="#${alpha}859900"
colors[base03]="#${alpha}002b36"
colors[base02]="#${alpha}073642"
colors[base01]="#${alpha}586e75"
colors[base00]="#${alpha}839496"
colors[base0]="#${alpha}839496"
colors[base1]="#${alpha}93a1a1"
colors[base2]="#${alpha}eee8d5"
colors[base3]="#${alpha}fdf6e3"

foreach color (${(@k)colors}) {export $color=$colors[$color]}

export bg=$base03
export fg=$base1
