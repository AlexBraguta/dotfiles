#!/bin/bash

# Set your Nerd Font icons for dark and light modes
ICON_DARK=""  # nf-fa-moon_o
ICON_LIGHT="" # nf-fa-sun_o

# Get current darkman state safely
STATE=$(darkman get 2>/dev/null)

if [[ "$STATE" == "dark" ]]; then
    ICON="$ICON_LIGHT"
    LABEL="Dark"
elif [[ "$STATE" == "light" ]]; then
    ICON="$ICON_DARK"
    LABEL="Light"
else
    ICON="" # nf-fa-exclamation_triangle
    LABEL="Unknown"
fi

# Output JSON for Waybar
printf '{"text": "%s", "class": "%s"}\n' "$ICON" "$LABEL" "$LABEL"
