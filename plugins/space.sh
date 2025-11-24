#!/bin/sh

# Space component script for Tokyo Night Storm theme
# The $SELECTED variable indicates if the space is currently selected

# Tokyo Night Storm colors (hex format for use in scripts)
TN_BLUE=0xff7aa2f7
TN_FG=0xffc0caf5
TN_FG_DIM=0xff565f89
TN_BG_LIGHT=0xff292e42
BORDER_COLOR=0xff3b4261
BORDER_FOCUS=0xff7aa2f7
WORKSPACE_FOCUSED=0x997aa2f7

if [ "$SELECTED" = "true" ]; then
    # Selected space - use blue accent with highlighted border
    sketchybar --set "$NAME" \
        background.drawing=on \
        background.color=$WORKSPACE_FOCUSED \
        icon.color=$TN_BLUE \
        background.border_color=$BORDER_FOCUS \
        background.border_width=2
else
    # Unselected space - use dimmed colors
    sketchybar --set "$NAME" \
        background.drawing=on \
        background.color=$TN_BG_LIGHT \
        icon.color=$TN_FG_DIM \
        background.border_color=$BORDER_COLOR \
        background.border_width=1
fi
