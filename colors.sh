#!/usr/bin/env sh

# SketchyBar Color Configuration
# This file loads colors from the theme system for backward compatibility

# Load the current theme
source "$CONFIG_DIR/themes/theme-manager.sh"
eval "$(bash "$CONFIG_DIR/themes/theme-manager.sh" load)"

# Export all theme colors for use in other scripts
# These are now loaded from the active theme (Tokyo Night Storm by default)

# Note: The theme file already exports all necessary color variables:
# - TN_BG, TN_BG_DARK, TN_BG_LIGHT
# - TN_FG, TN_FG_DIM
# - TN_BLUE, TN_CYAN, TN_GREEN, TN_YELLOW, TN_MAGENTA, TN_RED, TN_ORANGE
# - BAR_BG, BAR_FG, ACCENT, WARN, ERROR, INFO
# - SURFACE_*, CONTENT_*, INTERACTIVE_*, STATE_*, BORDER_*

# All colors are automatically available when this file is sourced
