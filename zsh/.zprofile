# Create temporary directory
export TMPDIR="/tmp/$USER"
if [[ ! -d $TMPDIR ]] then
    mkdir $TMPDIR
fi

# Make sure XDG dirs are set
[[ -n "$XDG_CONFIG_HOME" ]] || export XDG_CONFIG_HOME=$HOME/.config
[[ -n "$XDG_DATA_HOME" ]] || export XDG_DATA_HOME=$HOME/.local/share
[[ -n "$XDG_CACHE_HOME" ]] || export XDG_CACHE_HOME=$HOME/.cache

# export other directories to PATH
PATH=$PATH:$HOME/bin
