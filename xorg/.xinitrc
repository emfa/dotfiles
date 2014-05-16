#!/usr/bin/zsh

# Create bspwm temporary directory
export BSPWM_DIR="$TMPDIR/bspwm"
if [[ ! -d $BSPWM_DIR ]] then
    mkdir $BSPWM_DIR
fi

# BSPWM configuration
export BSPWM_SOCKET="$BSPWM_DIR/socket"
export BSPWM_TREE="$BSPWM_DIR/tree"
export BSPWM_HISTORY="$BSPWM_DIR/history"
export BSPWM_STACK="$BSPWM_DIR/stack"

# Panel
export BSPWM_PANEL="$BSPWM_DIR/panel"
export BSPWM_PANEL_HEIGHT=16

# Source Xresources
xrdb "$XDG_CONFIG_HOME/xorg/.Xresources"

# Run xmodmap
xmodmap "$XDG_CONFIG_HOME/xorg/.xmodmap"

# Rehash fonts
xset +fp /usr/share/fonts/local
xset fp rehash

# Execute window manager
exec wm
