#!/bin/sh

# Memory usage monitoring for SketchyBar
# Tokyo Night Storm themed - shows memory usage in GB

# Tokyo Night Storm colors
TN_BLUE=0xff7aa2f7
TN_GREEN=0xff9ece6a
TN_YELLOW=0xffe0af68
TN_ORANGE=0xffff9e64
TN_RED=0xfff7768e
TN_FG=0xffc0caf5

# Get actual total RAM from system
TOTAL_BYTES=$(sysctl -n hw.memsize)

# Get memory info using vm_stat
VM_STAT=$(vm_stat)

# Get page size (usually 4096 bytes on modern Macs)
PAGE_SIZE=$(vm_stat | head -1 | awk '{print $8}')

# Extract memory values (in pages)
PAGES_FREE=$(echo "$VM_STAT" | grep "Pages free" | awk '{print $3}' | sed 's/\.//')
PAGES_ACTIVE=$(echo "$VM_STAT" | grep "Pages active" | awk '{print $3}' | sed 's/\.//')
PAGES_INACTIVE=$(echo "$VM_STAT" | grep "Pages inactive" | awk '{print $3}' | sed 's/\.//')
PAGES_SPECULATIVE=$(echo "$VM_STAT" | grep "Pages speculative" | awk '{print $3}' | sed 's/\.//')
PAGES_WIRED=$(echo "$VM_STAT" | grep "Pages wired down" | awk '{print $4}' | sed 's/\.//')
PAGES_COMPRESSED=$(echo "$VM_STAT" | grep "Pages occupied by compressor" | awk '{print $5}' | sed 's/\.//')

# Calculate used memory in bytes
USED_BYTES=$((PAGE_SIZE * (PAGES_ACTIVE + PAGES_WIRED + PAGES_COMPRESSED)))

# Convert to GB (divide by 1024^3)
TOTAL_GB=$(awk "BEGIN {printf \"%.0f\", ($TOTAL_BYTES / 1073741824)}")
USED_GB=$(awk "BEGIN {printf \"%.1f\", ($USED_BYTES / 1073741824)}")

# Calculate percentage for color coding
if [ "$TOTAL_BYTES" -gt 0 ]; then
    MEMORY_PERCENT=$(awk "BEGIN {printf \"%.0f\", ($USED_BYTES * 100.0 / $TOTAL_BYTES)}")
else
    MEMORY_PERCENT=0
fi

# Set color and icon based on usage percentage
if [ "$MEMORY_PERCENT" -ge 90 ]; then
    COLOR=$TN_RED
    ICON="󰘚"
elif [ "$MEMORY_PERCENT" -ge 75 ]; then
    COLOR=$TN_ORANGE
    ICON="󰘚"
elif [ "$MEMORY_PERCENT" -ge 50 ]; then
    COLOR=$TN_YELLOW
    ICON="󰘚"
else
    COLOR=$TN_GREEN
    ICON="󰘚"
fi

# Update the item
sketchybar --set "$NAME" \
    icon="$ICON" \
    icon.color="$COLOR" \
    label="${USED_GB}GB/${TOTAL_GB}GB" \
    label.color="$TN_FG"
