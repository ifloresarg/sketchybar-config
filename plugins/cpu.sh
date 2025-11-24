#!/usr/bin/env sh

# CPU usage monitoring for SketchyBar
# Tokyo Night Storm themed - shows CPU usage percentage with icon

# Tokyo Night Storm colors
TN_BLUE=0xff7aa2f7
TN_GREEN=0xff9ece6a
TN_YELLOW=0xffe0af68
TN_ORANGE=0xffff9e64
TN_RED=0xfff7768e
TN_MAGENTA=0xffbb9af7
TN_FG=0xffc0caf5

# Get CPU usage from top
CPU=$(top -l 2 | grep "CPU usage" | tail -1 | awk '{print $3}' | sed 's/%//')

# Fallback if parsing fails
[ -z "$CPU" ] && CPU="0"

# Convert to integer for comparison
CPU_INT=$(echo "$CPU" | cut -d. -f1)

# Set color and icon based on usage
if [ "$CPU_INT" -ge 80 ]; then
    COLOR=$TN_RED
    ICON="󰻠"
elif [ "$CPU_INT" -ge 60 ]; then
    COLOR=$TN_ORANGE
    ICON="󰻠"
elif [ "$CPU_INT" -ge 40 ]; then
    COLOR=$TN_YELLOW
    ICON="󰻠"
else
    COLOR=$TN_MAGENTA
    ICON="󰻠"
fi

# Update the item
sketchybar --set "$NAME" \
    icon="$ICON" \
    icon.color="$COLOR" \
    label="${CPU}%" \
    label.color="$TN_FG"
