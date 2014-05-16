export EDITOR="vim"
export XDG_CONFIG_HOME="$HOME/.config"

# Create temporary directory
export TMPDIR="/tmp/$USER"
if [[ ! -d $TMPDIR ]] then
    mkdir $TMPDIR
fi

# Github
export GITHUB_USER=emfa

path=(
    $HOME/bin
    $XDG_CONFIG_HOME/scripts
    /usr/local/bin
    $path
)
