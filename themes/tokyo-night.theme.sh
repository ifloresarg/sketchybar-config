#!/usr/bin/env sh

# Tokyo Night Storm Theme - Semantic Version
# Industry-standard semantic naming with Tokyo Night Storm color values
# Based on Tokyo Night Storm palette from Zed editor

#===============================================================================
# SURFACE COLORS (backgrounds, cards, overlays)
#===============================================================================

export SURFACE_BASE=0xff24283b            # Main app background (Storm bg)
export SURFACE_CONTAINER_PRIMARY=0x901f2335    # Primary section backgrounds (Storm bg_dark)
export SURFACE_CONTAINER_SECONDARY=0x90292e42  # Secondary section backgrounds (Storm bg_highlight)
export SURFACE_OVERLAY=0xff1f2335         # Modal/popup backgrounds (Storm bg_dark)
export SURFACE_ELEVATED=0xff292e42        # Raised card backgrounds (Storm bg_highlight)

#===============================================================================
# CONTENT COLORS (text, icons)
#===============================================================================

export CONTENT_PRIMARY=0xffc0caf5         # Main content text and icons (Storm fg)
export CONTENT_SECONDARY=0xffa9b1d6       # Supporting content (Storm fg_dark)
export CONTENT_TERTIARY=0xff565f89        # Subtle/disabled content (Storm comment)
export CONTENT_INVERSE=0xff24283b         # Content on colored backgrounds (Storm bg)
export CONTENT_DISABLED=0xff565f89        # Disabled content state (Storm comment)

#===============================================================================
# INTERACTIVE COLORS (buttons, links, controls)
#===============================================================================

export INTERACTIVE_PRIMARY=0xff7aa2f7     # Primary brand actions and focus (Storm blue)
export INTERACTIVE_SECONDARY=0xffbb9af7   # Secondary actions (Storm purple)
export INTERACTIVE_SELECTED=0xffc0caf5    # Selected/active items (Storm fg)

export INTERACTIVE_HOVER=0x60c0caf5       # Hover states (Storm fg with transparency)
export INTERACTIVE_ACTIVE=0x807aa2f7      # Pressed states (Storm blue with transparency)
export INTERACTIVE_DISABLED=0x40565f89    # Disabled states (Storm comment)
export INTERACTIVE_FOCUS=0xff7aa2f7       # Focus outlines (Storm blue)

#===============================================================================
# STATE COLORS (alerts, status, semantic states)
#===============================================================================

export STATE_SUCCESS=0xff9ece6a          # Success states (Storm green)
export STATE_WARNING=0xffe0af68          # Warning states (Storm yellow)
export STATE_CAUTION=0xffff9e64          # Medium warning level (Storm orange)
export STATE_ERROR=0xfff7768e            # Error states (Storm red)
export STATE_INFO=0xff7dcfff             # Informational states (Storm cyan)

#===============================================================================
# BORDER COLORS (dividers, outlines)
#===============================================================================

export BORDER_PRIMARY=0xff565f89          # Main borders (Storm comment)
export BORDER_SECONDARY=0xff3b4261        # Subtle borders (Storm border)
export BORDER_FOCUS=0xff7aa2f7            # Focus outlines (Storm blue)
export BORDER_DIVIDER=0xff292e42          # Section separators (Storm bg_highlight)

#===============================================================================
# SPECIALIZED SYSTEM COLORS
#===============================================================================

# Workspace states (specific semantic meanings)
export WORKSPACE_FOCUSED=0x997aa2f7       # Currently focused workspace with focused app (semi-transparent blue)
export WORKSPACE_ACTIVE=$INTERACTIVE_HOVER # Active workspace (current but no focused app)
export WORKSPACE_UNFOCUSED=$CONTENT_TERTIARY # Inactive workspaces
export WORKSPACE_OCCUPIED=$STATE_SUCCESS   # Workspaces with windows
export WORKSPACE_EMPTY=$CONTENT_TERTIARY   # Empty workspaces

# Segment backgrounds (for visual grouping)
export SEGMENT_PRIMARY=$SURFACE_CONTAINER_PRIMARY    # Primary segments
export SEGMENT_SECONDARY=$SURFACE_CONTAINER_SECONDARY # Secondary segments

#===============================================================================
# TYPOGRAPHY (fonts and text styling)
#===============================================================================

export FONT_FAMILY_PRIMARY="MesloLGS Nerd Font"        # Main UI font
export FONT_FAMILY_ICONS="sketchybar-app-font"         # App icon font with ligatures
export FONT_FAMILY_SYSTEM="SF Pro"                     # System font for special cases

export FONT_SIZE_SMALL=11                              # Small text
export FONT_SIZE_MEDIUM=13                             # Regular text
export FONT_SIZE_LARGE=16                              # Large text/icons

# Main font variable used in sketchybar config
export FONT="$FONT_FAMILY_PRIMARY"                     # Default font for sketchybar

#===============================================================================
# SKETCHYBAR MAPPINGS
#===============================================================================

# Essential SketchyBar mappings
export TRANSPARENT=0x00000000            # Transparent background for main bar
export POPUP_BACKGROUND_COLOR=$SURFACE_OVERLAY
export POPUP_SHADOW_COLOR=0x60000000

#===============================================================================
# TOKYO NIGHT STORM - DIRECT COLOR EXPORTS
# (for backward compatibility with existing configs)
#===============================================================================

export TN_BG=0xff24283b        # Main background
export TN_BG_DARK=0xff1f2335   # Darker background
export TN_BG_LIGHT=0xff292e42  # Lighter background

export TN_FG=0xffc0caf5        # Main foreground
export TN_FG_DIM=0xff565f89    # Dimmed foreground

export TN_BLUE=0xff7aa2f7
export TN_CYAN=0xff7dcfff
export TN_GREEN=0xff9ece6a
export TN_YELLOW=0xffe0af68
export TN_MAGENTA=0xffbb9af7
export TN_RED=0xfff7768e
export TN_ORANGE=0xffff9e64

# Convenient aliases for bar
export BAR_BG=$TN_BG_DARK
export BAR_FG=$TN_FG
export ACCENT=$TN_BLUE
export WARN=$TN_ORANGE
export ERROR=$TN_RED
export INFO=$TN_CYAN
